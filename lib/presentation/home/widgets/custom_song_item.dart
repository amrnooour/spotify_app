import 'package:flutter/material.dart';

class CustomSongItem extends StatelessWidget {
  final String image;
  final String title;
  final String artist;

  const CustomSongItem({super.key, required this.image, required this.title, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.network(image,height: 185,width: 147,fit: BoxFit.cover,)),
        const SizedBox(height: 13,),
        Text(title,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        const SizedBox(height: 3,),
        Text(artist,style: const TextStyle(fontSize: 16),)
        ],
    );
  }
}
