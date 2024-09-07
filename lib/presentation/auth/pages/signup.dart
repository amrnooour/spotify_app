import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/auth/widgets/signup_body.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignupBody(),
    );
  }
}