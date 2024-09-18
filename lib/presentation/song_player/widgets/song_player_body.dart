import 'package:flutter/material.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

class SongPlayerBody extends StatelessWidget {
  final SongsEntites songsEntites;
  const SongPlayerBody({super.key, required this.songsEntites});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network(songsEntites.imageUrl,width: 335,height: 370,
            fit: BoxFit.cover,)),
        ),
        const SizedBox(height: 17,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: [
            Column(children: [
              Text(songsEntites.title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              const SizedBox(height: 6,),
              Text(songsEntites.artist,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            ],),
            const Spacer(),
            const Icon(Icons.favorite_border)
          ],),
        )
      ],
    );
  }
}
