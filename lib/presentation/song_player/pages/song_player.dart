import 'package:flutter/material.dart';
import 'package:spotify_app/common/helpers/is_dark_mode.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';
import 'package:spotify_app/presentation/song_player/widgets/song_player_body.dart';

class SongPlayer extends StatelessWidget {
  final SongsEntites songsEntites;
  const SongPlayer({super.key, required this.songsEntites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded,
          size: 16,)),
        title: Text(
          "Now Playing",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: context.isDarkMode ? Colors.white : Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.more_vert_outlined),
          )
        ],
        elevation: 0,
      ),
      body: SongPlayerBody(
        songsEntites: songsEntites,
      ),
    );
  }
}
