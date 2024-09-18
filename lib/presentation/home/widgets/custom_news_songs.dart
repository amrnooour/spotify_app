import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/bloc/news_songs_states.dart';
import 'package:spotify_app/presentation/home/widgets/custom_song_item.dart';

class CustomNewsSongs extends StatelessWidget {
  const CustomNewsSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewsSongsCubit()..getNewsSongs(),
        child: BlocBuilder<NewsSongsCubit, NewsSongsStates>(
            builder: (context, state) {
          if (state is NewsSongsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is NewsSongsFailure) {
            print(state.errorMessage);
          } else if (state is NewsSongsSuccess) {
            return SizedBox(
              height: 260,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => CustomSongItem(
                      onTap: () {
                        customNavigation(context, Constants.songPlayerRoute,
                            extra: state.songs[index]);
                      },
                      image: state.songs[index].imageUrl,
                      title: state.songs[index].title,
                      artist: state.songs[index].artist),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 14,
                      ),
                  itemCount: state.songs.length),
            );
          }
          return Container(
            color: Colors.amber,
          );
        }));
  }
}
