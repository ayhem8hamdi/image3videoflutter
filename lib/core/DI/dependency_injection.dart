// core/di/injection_container.dart
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image2vid/core/services/api_service.dart';
import 'package:image2vid/features/home/data/remote_data_source/vid_gen_remote_data_source.dart';
import 'package:image2vid/features/home/data/repos/video_gen_repo_impl.dart';
import 'package:image2vid/features/home/domain/repos/video_generation_repo.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<VideoGenerationRepository>(
    () => VideoGenerationRepositoryImpl(remoteDataSource: sl()),
  );

  sl.registerLazySingleton<VideoGenerationRemoteDataSource>(
    () => VideoGenerationRemoteDataSourceImpl(apiService: sl()),
  );

  sl.registerLazySingleton<ApiService>(() => ApiServiceImpl(dio: sl()));

  sl.registerLazySingleton(() => Dio());
}
