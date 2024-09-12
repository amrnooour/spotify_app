import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  final bool isVisible;
  final bool hideArrowBack;
  const CustomAppBar({super.key, this.isVisible = false,this.hideArrowBack=false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: isVisible ? SvgPicture.asset(AppAssets.logo) : const Text(""),
      centerTitle: true,
      leading: hideArrowBack?const Text(""): GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 15,
            color: context.isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
