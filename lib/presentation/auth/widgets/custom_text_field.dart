import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;

  const CustomTextField(
      {super.key,
      this.onChanged,
      this.controller,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        disabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: context.isDarkMode?Colors.white : Colors.black.withOpacity(.4), fontSize: 18),
        fillColor: const Color(0xffE4DFDF).withOpacity(.1),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(.2)),
        borderRadius: BorderRadius.circular(30));
  }
}