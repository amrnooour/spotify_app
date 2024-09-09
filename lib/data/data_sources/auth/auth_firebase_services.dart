import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseServices {
  Future<void> signin(SigninUserReq signinUserReq);
  Future<Either> signup(CreateUserReq createUserReq);
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
  @override
  Future<void> signin(SigninUserReq signinUserReq) {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
      return right("sign up successfly");
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      }
      return left(message);
    } 
  }
}
