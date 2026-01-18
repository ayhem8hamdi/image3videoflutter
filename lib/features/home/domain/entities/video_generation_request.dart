import 'dart:io';
import 'package:equatable/equatable.dart';

class VideoGenerationRequest extends Equatable {
  final File imageFile;
  final String userId;
  final String? customPrompt;

  const VideoGenerationRequest({
    required this.imageFile,
    required this.userId,
    this.customPrompt,
  });

  @override
  List<Object?> get props => [imageFile, userId, customPrompt];
}
