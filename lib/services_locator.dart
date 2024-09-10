import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/data_sources/auth/auth_firebase_services.dart';
import 'package:spotify_app/data/repository/auth/auth_reop_impl.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_usecase.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_usecase.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());
  sl.registerSingleton<AuthRepo>(AuthReopImpl());
  sl.registerSingleton<SignupUsecase>(SignupUsecase());
  sl.registerSingleton<SigninUsecase>(SigninUsecase());



}
