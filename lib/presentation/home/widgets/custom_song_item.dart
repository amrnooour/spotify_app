import 'package:flutter/material.dart';
import 'package:spotify_app/core/utils/app_colors.dart';

class CustomSongItem extends StatelessWidget {
  final String image;
  final String title;
  final String artist;

  const CustomSongItem(
      {super.key,
      required this.image,
      required this.title,
      required this.artist});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Stack(
              children: [
                Image.network(
                  image,
                  height: 185,
                  width: 147,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  right: 5,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.grey,
                    ),
                    child: const Center(child: Icon(Icons.play_arrow)),
                  ),
                )
              ],
            )),
        const SizedBox(
          height: 13,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          artist,
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
