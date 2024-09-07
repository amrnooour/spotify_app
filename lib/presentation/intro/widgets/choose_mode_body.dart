import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/core/utils/app_assets.dart';
import 'package:spotify_app/presentation/intro/bloc/theme_cubit.dart';
import 'package:spotify_app/presentation/intro/widgets/custom_button.dart';
import 'package:spotify_app/presentation/intro/widgets/custom_container_mode.dart';

class ChooseModeBody extends StatelessWidget {
  const ChooseModeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AppAssets.chooseModeBG), fit: BoxFit.fill),
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
                "Choose Mode",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainerMode(
                path: AppAssets.moon,
                onTap: () {
                  context.read<ThemeCubit>().updateMode(ThemeMode.dark);
                },
              ),
              const SizedBox(
                width: 58,
              ),
              CustomContainerMode(
                path: AppAssets.sun,
                onTap: () {
                  context.read<ThemeCubit>().updateMode(ThemeMode.light);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 17,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Dark Mode",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 58,
              ),
              Text(
                "Light Mode",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 68,
          ),
          CustomButton(
            text: "Continue",
            onPressed: () {},
          ),
          const SizedBox(
            height: 69,
          ),
        ],
      ),
    );
  }
}
