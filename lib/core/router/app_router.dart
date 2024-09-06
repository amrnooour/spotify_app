import 'package:go_router/go_router.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/intro/pages/choose_mode.dart';
import 'package:spotify_app/presentation/intro/pages/get_started.dart';
import 'package:spotify_app/presentation/splash/pages/spalsh.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: Constants.getStartedRoute,builder: (context, state) => const GetStarted(),),
  GoRoute(path: Constants.chooseModeRoute,builder: (context, state) => const ChooseMode(),),


]);
