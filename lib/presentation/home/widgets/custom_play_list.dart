import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/router/navigation.dart';
import 'package:spotify_app/core/utils/constants.dart';
import 'package:spotify_app/presentation/home/bloc/play_list_cubit.dart';
import 'package:spotify_app/presentation/home/bloc/play_list_states.dart';
import 'package:spotify_app/presentation/home/widgets/custom_row_of_play_list.dart';

class CustomPlayList extends StatelessWidget {
  const CustomPlayList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PlayListCubit()..getPlayList(),
      child: BlocBuilder<PlayListCubit, PlayListStates>(
        builder: (context, state) {
          if (state is PlayListLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PlayListFailure) {
            print(state.errorMessage);
          } else if (state is PlayListSuccess) {
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Text(
                        "PlayList",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        "see More",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 15,
                    ),
                    itemCount: state.songs.length,
                    itemBuilder: (context, index) {
                      return CustomRowOfPlayList(
                          onTap: () {
                            customNavigation(context, Constants.songPlayerRoute,
                                extra: state.songs[index]);
                          },
                          title: state.songs[index].title,
                          artist: state.songs[index].artist,
                          duration: state.songs[index].duration
                              .toString()
                              .replaceAll(".", ":"));
                    },
                  ),
                )
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
