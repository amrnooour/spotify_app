import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerMode extends StatelessWidget {
  final String path;
  final void Function()? onTap;
  const CustomContainerMode({super.key, required this.path, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 63,
        width: 63,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black.withOpacity(.5)),
        child: SvgPicture.asset(path,fit: BoxFit.none,),
      ),
    );
  }
}
