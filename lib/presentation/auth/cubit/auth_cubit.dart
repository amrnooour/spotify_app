import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';
import 'package:spotify_app/domain/use_cases/auth/signin_usecase.dart';
import 'package:spotify_app/domain/use_cases/auth/signup_usecase.dart';
import 'package:spotify_app/presentation/auth/cubit/auth_states.dart';
import 'package:spotify_app/services_locator.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(AuthInitial());

  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  register() async {
    emit(AuthLoading());
    final result = await sl<SignupUsecase>().call(
        params: CreateUserReq(
            fullName: fullName.text,
            email: email.text,
            password: password.text));
    result.fold((error) => emit(AuthFailure(errorMessage: error)),
        (success) => emit(AuthSuccess()));
  }

  login() async {
    emit(AuthLoading());
    final result = await sl<SigninUsecase>().call(
        params: SigninUserReq(email: email.text, password: password.text));
    result.fold((error) => emit(AuthFailure(errorMessage: error)),
        (success) => emit(AuthSuccess()));
  }
}
