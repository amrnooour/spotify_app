import 'package:flutter/material.dart';
import 'package:spotify_app/common/widgets/custom_app_bar.dart';
import 'package:spotify_app/common/widgets/custom_button.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_auth_have_account.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_auth_title.dart';
import 'package:spotify_app/presentation/auth/widgets/custom_text_field.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            const CustomAppBar(
              isVisible: true,
            ),
            const SizedBox(
              height: 80,
            ),
            const CustomAuthTitle(title: "Register"),
            const SizedBox(
              height: 76,
            ),
            const CustomTextField(
              hintText: "Full Name",
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(hintText: "Enter Email"),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(hintText: "password"),
            const SizedBox(
              height: 61,
            ),
            CustomButton(
              text: "Craete Account",
              onPressed: () {},
            ),
             const SizedBox(
              height: 80,
            ),
            CustomAuthHaveAccount(
              title1: "Do you have an account? ",
              title2: 'sign in',
              onTap: () {
                customNavigation(context, Constants.signinRoute);
              },
            ),
          ],
        ),
      ),
    );
    ;
  }
}
