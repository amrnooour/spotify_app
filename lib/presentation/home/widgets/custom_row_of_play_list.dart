import 'package:flutter/material.dart';
import 'package:spotify_app/core/utils/app_colors.dart';

class CustomRowOfPlayList extends StatelessWidget {
  final String title;
  final String artist;
  final String duration;

  const CustomRowOfPlayList(
      {super.key,
      required this.title,
      required this.artist,
      required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Container(
            width: 37,
            height: 37,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
            child: const Icon(
              Icons.play_arrow,
              color: AppColors.darkGrey,
            ),
          ),
          const SizedBox(
            width: 23,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                artist,
                style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const Spacer(),
          Text(duration,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          const SizedBox(
            width: 20,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                size: 21,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
