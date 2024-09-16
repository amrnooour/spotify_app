import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/custom_app_bar.dart';
import 'package:spotify_app/core/utils/app_assets.dart';
import 'package:spotify_app/presentation/home/widgets/custom_news_songs.dart';
import 'package:spotify_app/presentation/home/widgets/custom_tabs.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          hideArrowBack: true,
          isVisible: true,
        ),
        Stack(
          children: [
            SizedBox(
                height: 165,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SvgPicture.asset(AppAssets.homeTopCard))),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child: Image.asset(AppAssets.homeArtist),
                )),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
        CustomTabs(controller: controller),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: SizedBox(
            height: 250,
            child: TabBarView(controller: controller, children: [
              const CustomNewsSongs(),
              Container(),
              Container(),
              Container(),
            ]),
          ),
        )
      ],
    );
  }
}
