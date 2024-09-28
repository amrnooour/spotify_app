import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/function/format_duration.dart';
import 'package:spotify_app/core/utils/app_colors.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';
import 'package:spotify_app/presentation/song_player/bloc/song_player_cubit.dart';
import 'package:spotify_app/presentation/song_player/bloc/song_player_states.dart';

class SongPlayerBody extends StatefulWidget {
  final SongsEntites songsEntites;
  const SongPlayerBody({super.key, required this.songsEntites});

  @override
  State<SongPlayerBody> createState() => _SongPlayerBodyState();
}

class _SongPlayerBodyState extends State<SongPlayerBody> {
  @override
  void initState() {
    context.read<SongPlayerCubit>().loadSongPlayer(widget.songsEntites.songUrl);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SongPlayerCubit cubit = context.read();
    return Column(
      children: [
        Center(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                widget.songsEntites.imageUrl,
                width: 335,
                height: 370,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    widget.songsEntites.title,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    widget.songsEntites.artist,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(Icons.favorite_border)
            ],
          ),
        ),
        BlocBuilder<SongPlayerCubit, SongPlayerStates>(
          builder: (context, state) {
            if (state is SongPlayerLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SongPlayerFailure) {
              return Container();
            } else if (state is SongPlayerSuccess) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Slider(
                        value: cubit.songPosition.inSeconds.toDouble(),
                        min: 0.0,
                        max: cubit.songDuration.inSeconds.toDouble(),
                        onChanged: (value) {}),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(formatDuration(cubit.songPosition)),
                        Text(formatDuration(cubit.songDuration))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        cubit.playOrPauseSong();
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: AppColors.primary),
                        child: Icon(cubit.audioPlayer.playing
                            ? Icons.pause
                            : Icons.play_arrow),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container();
          },
        )
      ],
    );
  }
}
