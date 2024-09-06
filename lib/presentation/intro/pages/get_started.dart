import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/intro/widgets/get_started_body.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GetStartedBody(),
    );
  }
}