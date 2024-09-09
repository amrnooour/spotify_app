import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/data_sources/auth/auth_firebase_services.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';
import 'package:spotify_app/domain/repository/auth/auth_repo.dart';
import 'package:spotify_app/services_locator.dart';

class AuthReopImpl extends AuthRepo {
  @override
  Future<void> signin(SigninUserReq signinUserReq) {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseServices>().signup(createUserReq);
  }
}
