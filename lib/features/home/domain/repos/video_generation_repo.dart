import 'package:dartz/dartz.dart';
import 'package:image2vid/core/errors/failure.dart';
import 'package:image2vid/features/home/domain/entities/video_generation_request.dart';
import 'package:image2vid/features/home/domain/entities/video_generation_result.dart';

abstract class VideoGenerationRepository {
  Future<Either<Failure, VideoGenerationResult>> generateVideo({
    required VideoGenerationRequest request,
    void Function(int progress, int step)? onProgress,
  });
}
