import 'package:equatable/equatable.dart';

class VideoGenerationResult extends Equatable {
  final String videoUrl;
  final String driveFileLink;
  final String driveFileId;
  final String requestId;
  final DateTime timestamp;

  const VideoGenerationResult({
    required this.videoUrl,
    required this.driveFileLink,
    required this.driveFileId,
    required this.requestId,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [
    videoUrl,
    driveFileLink,
    driveFileId,
    requestId,
    timestamp,
  ];
}
