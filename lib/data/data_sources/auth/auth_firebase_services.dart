import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify_app/data/models/auth/create_user_req.dart';
import 'package:spotify_app/data/models/auth/signin_user_req.dart';

abstract class AuthFirebaseServices {
  Future<Either> signin(SigninUserReq signinUserReq);
  Future<Either> signup(CreateUserReq createUserReq);
}

class AuthFirebaseServicesImpl extends AuthFirebaseServices {
  @override
  Future<Either> signin(SigninUserReq signinUserReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: signinUserReq.email,
        password: signinUserReq.password,
      );
      return right("sign in successfly");
    } on FirebaseAuthException catch (e) {
      String message = "";
      if (e.code == 'invaild-email') {
        message = 'The email  is too invaild.';
      } else if (e.code == 'invaild-credential') {
        message = 'wrong password';
      }
      return left(message);
    }
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password,
      );
      FirebaseFirestore.instance.collection("users").add({
        "name" : createUserReq.fullName,
        "email" :data.user?.email
      });
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
