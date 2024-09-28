import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:spotify_app/presentation/song_player/bloc/song_player_states.dart';

class SongPlayerCubit extends Cubit<SongPlayerStates> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration songDuration = Duration.zero;
  Duration songPosition = Duration.zero;

  SongPlayerCubit() : super(SongPlayerInitial()) {
    audioPlayer.durationStream.listen((duration) {
      songDuration = duration!;
    });

    audioPlayer.positionStream.listen((position) {
      songPosition = position;
      updateSongPlayer();
    });
  }

  void updateSongPlayer() {
    emit(SongPlayerSuccess());
  }

  Future<void> loadSongPlayer(String url) async {
    try {
      await audioPlayer.setUrl(url);
      emit(SongPlayerSuccess());
    } catch (e) {
      emit(SongPlayerFailure());
    }
  }

  void playOrPauseSong() {
    if (audioPlayer.playing) {
      audioPlayer.stop();
    } else {
      audioPlayer.play();
    }
    emit(SongPlayerSuccess());
  }

  @override
  Future<void> close() {
    audioPlayer.dispose();
    return super.close();
  }
}
