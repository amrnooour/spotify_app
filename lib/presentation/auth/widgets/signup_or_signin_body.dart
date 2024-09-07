import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/common/widgets/custom_app_bar.dart';
import 'package:spotify_app/common/widgets/custom_button.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/app_assets.dart';
import 'package:spotify_app/core/utils/constants.dart';

class SignupOrSigninBody extends StatelessWidget {
  const SignupOrSigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topCenter, child: CustomAppBar()),
        Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppAssets.topPattern)),
        Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppAssets.bottomPattern)),
        Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppAssets.authBG)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            const SizedBox(
              height: 55,
            ),
            Center(
                child: Text(
              "Enjoy listening To music",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: context.isDarkMode ? Colors.white : Colors.black),
            )),
            const SizedBox(
              height: 21,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Spotify is a proprietary Swedish audio\n streaming and media services provider ",
              style: TextStyle(fontSize: 15, color: Color(0xff797979)),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  text: "Register",
                  onPressed: () {
                    customNavigation(context, Constants.signupRoute);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextButton(
                      onPressed: () {
                        customNavigation(context, Constants.signinRoute);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 18,
                            color: context.isDarkMode
                                ? Colors.white
                                : Colors.black),
                      )),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
