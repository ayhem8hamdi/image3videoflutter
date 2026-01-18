import 'dart:io';

import 'package:path/path.dart' show basename;
import 'package:dio/dio.dart';
import 'package:image2vid/core/errors/failure.dart';
import 'package:image2vid/core/services/api_service.dart';
import 'package:image2vid/features/home/data/models/video_generation_response_model.dart';

abstract class VideoGenerationRemoteDataSource {
  Future<VideoGenerationResponseModel> generateVideo({
    required File imageFile,
    required String userId,
    String? customPrompt,
    void Function(int progress, int step)? onProgress,
  });
}

class VideoGenerationRemoteDataSourceImpl
    implements VideoGenerationRemoteDataSource {
  final ApiService apiService;
  static const String baseUrl =
      'https://mugiwarahamdi.app.n8n.cloud/webhook/image-to-video';

  VideoGenerationRemoteDataSourceImpl({required this.apiService});

  @override
  Future<VideoGenerationResponseModel> generateVideo({
    required File imageFile,
    required String userId,
    String? customPrompt,
    void Function(int progress, int step)? onProgress,
  }) async {
    try {
      onProgress?.call(10, 0);

      final formData = _createFormData(imageFile, userId, customPrompt);
      onProgress?.call(20, 0);

      final response = await _sendRequest(formData, onProgress);
      onProgress?.call(60, 1);

      _validateResponse(response);
      onProgress?.call(90, 2);

      final model = VideoGenerationResponseModel.fromJson(response.data);
      onProgress?.call(100, 3);

      return model;
    } catch (e) {
      throw _mapException(e);
    }
  }

  FormData _createFormData(File file, String userId, String? prompt) {
    return FormData.fromMap({
      'data': MultipartFile.fromFileSync(
        file.path,
        filename: basename(file.path),
      ),
      'userId': userId,
      if (prompt != null && prompt.isNotEmpty) 'prompt': prompt,
    });
  }

  Future<Response> _sendRequest(
    FormData formData,
    void Function(int, int)? onProgress,
  ) async {
    return await apiService.postMultipart(
      endpoint: baseUrl,
      formData: formData,
      onSendProgress: (sent, total) {
        final uploadProgress = 20 + ((sent / total) * 30).toInt();
        onProgress?.call(uploadProgress, 0);
      },
    );
  }

  void _validateResponse(Response response) {
    if (response.statusCode != 200) {
      throw ServerException(
        response.data?['message'] ?? 'Failed to generate video',
        statusCode: response.statusCode,
      );
    }
    if (response.data['success'] != true) {
      throw ServerException(
        response.data['message'] ?? 'Video generation failed',
        statusCode: response.data['statusCode'] ?? 500,
      );
    }
  }

  Exception _mapException(Object e) {
    if (e is ValidationException ||
        e is ServerException ||
        e is NetworkException) {
      return e as Exception;
    }
    return ServerException('Unexpected error: $e');
  }
}
