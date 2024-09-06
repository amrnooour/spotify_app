import 'package:flutter/material.dart';
import 'package:spotify_app/presentation/intro/widgets/choose_mode_body.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseModeBody(),
    );
  }
}