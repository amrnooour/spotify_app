import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';
import 'package:spotify_app/presentation/auth/cubit/auth_cubit.dart';
import 'package:spotify_app/presentation/auth/pages/signin.dart';
import 'package:spotify_app/presentation/auth/pages/signup.dart';
import 'package:spotify_app/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify_app/presentation/home/pages/home.dart';
import 'package:spotify_app/presentation/intro/pages/choose_mode.dart';
import 'package:spotify_app/presentation/intro/pages/get_started.dart';
import 'package:spotify_app/presentation/song_player/pages/song_player.dart';
import 'package:spotify_app/presentation/splash/pages/spalsh.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: "/",builder: (context, state) => const Splash(),),
  GoRoute(path: Constants.getStartedRoute,builder: (context, state) => const GetStarted(),),
  GoRoute(path: Constants.chooseModeRoute,builder: (context, state) => const ChooseMode(),),
  GoRoute(path: Constants.signupOrsigninRoute,builder: (context, state) => const SignupOrSignin(),),
  GoRoute(path: Constants.signinRoute,builder: (context, state) => 
  BlocProvider(
    create: (context) => AuthCubit(),
    child: const Signin()),),
  GoRoute(path: Constants.signupRoute,builder: (context, state) => 
  BlocProvider(
    create: (context) => AuthCubit(),
    child: const Signup()),),
  GoRoute(path: Constants.homeRoute,builder: (context, state) => const Home(),),
  GoRoute(path: Constants.songPlayerRoute,builder: (context, state) => 
   SongPlayer(songsEntites: state.extra as SongsEntites),),

  
]);
