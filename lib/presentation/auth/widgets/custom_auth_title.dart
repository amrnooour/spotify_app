import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class CustomAuthTitle extends StatelessWidget {
  final String title;
  const CustomAuthTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(textAlign: TextAlign.center,title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
    color: context.isDarkMode?Colors.white:Colors.black),);
  }
}
