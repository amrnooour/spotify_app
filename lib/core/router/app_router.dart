import 'package:go_router/go_router.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/auth/pages/signin.dart';
import 'package:spotify_app/presentation/auth/pages/signup.dart';
import 'package:spotify_app/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify_app/presentation/intro/pages/choose_mode.dart';
import 'package:spotify_app/presentation/intro/pages/get_started.dart';
import 'package:spotify_app/presentation/splash/pages/spalsh.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: Constants.getStartedRoute,builder: (context, state) => const GetStarted(),),
  GoRoute(path: Constants.chooseModeRoute,builder: (context, state) => const ChooseMode(),),
  GoRoute(path: Constants.signupOrsigninRoute,builder: (context, state) => const SignupOrSignin(),),
  GoRoute(path: Constants.signinRoute,builder: (context, state) => const Signin(),),
  GoRoute(path: Constants.signupRoute,builder: (context, state) => const Signup(),),





]);
