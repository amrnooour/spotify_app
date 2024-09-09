import 'package:dartz/dartz.dart';
import 'package:spotify_app/core/usecase/usecase.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/services_locator.dart';

class SignupUsecase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) async {
    return await sl<AuthRepo>().signup(params!);
  }
}
