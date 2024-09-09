import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/data_sources/auth/auth_firebase_services.dart';
import 'package:spotify_app/data/repository/auth/auth_reop_impl.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseServices>(AuthFirebaseServicesImpl());
  sl.registerSingleton<AuthRepo>(AuthReopImpl());

}
