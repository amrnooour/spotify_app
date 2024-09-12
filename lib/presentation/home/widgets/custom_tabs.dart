import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/core/utils/app_colors.dart';

class CustomTabs extends StatelessWidget {
  final TabController controller;
  const CustomTabs({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          padding: const EdgeInsets.symmetric(vertical: 40),
          isScrollable: true,
          labelColor: context.isDarkMode?Colors.white:Colors.black,
          indicatorColor: AppColors.primary,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelStyle: TextStyle(color:context.isDarkMode?Colors.grey: Colors.grey),
          controller: controller, tabs: const[
          Tab(child: Text("News",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),),
          Tab(child: Text("Videos",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),),
          Tab(child: Text("Artist",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),),
          Tab(child: Text("Proudcast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),),
        ]),
      ],
    );
  }
}
