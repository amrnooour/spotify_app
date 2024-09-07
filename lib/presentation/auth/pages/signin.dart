import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/auth/widgets/signin_body.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SigninBody(),
    );
  }
}