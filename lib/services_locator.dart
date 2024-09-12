import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/data_sources/auth/auth_firebase_services.dart';
import 'package:spotify_app/data/data_sources/songs/song_firebase_services.dart';
import 'package:spotify_app/data/repository/auth/auth_reop_impl.dart';
import 'package:spotify_app/data/repository/songs/songs_repo_impl.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/domain/repository/songs/songs_repo.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_usecase.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_usecase.dart';
import 'package:spotify_app/domain/use_cases/songs/get_news_song_use_case.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());
  sl.registerSingleton<AuthRepo>(AuthReopImpl());
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
  sl.registerSingleton<SigninUsecase>(SigninUsecase());

  sl.registerSingleton<SongFirebaseServices>(SongFirebaseServicesImpl());
  sl.registerSingleton<SongsRepo>(SongsRepoImpl());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());






}
