import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/app_assets.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/common/widgets/custom_button.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.introBG), fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 37,
          ),
          SvgPicture.asset(
            AppAssets.logo,
            height: 59,
            width: 196,
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 53),
            child: Center(
              child: Text(
                "Enjoy listening to music",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 46),
            child: Text(
              textAlign: TextAlign.center,
              "Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. Sagittis enim\n purus sed phasellus. Cursus ornare id\n scelerisque aliquam.",
              style: TextStyle(fontSize: 15, color: Color(0xff797979)),
            ),
          ),
          const SizedBox(
            height: 37,
          ),
          CustomButton(
            text: "Get Started",
            onPressed: () {
              customNavigation(context, Constants.chooseModeRoute);
            },
          ),
          const SizedBox(
            height: 69,
          ),
        ],
      ),
    );
  }
}
