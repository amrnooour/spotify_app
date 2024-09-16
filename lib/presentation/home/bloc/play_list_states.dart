import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

class PlayListStates {}

class PlayListInitial extends PlayListStates {}

class PlayListLoading extends PlayListStates {}

class PlayListSuccess extends PlayListStates {
  final List<SongsEntites> songs;

  PlayListSuccess({required this.songs});
}

class PlayListFailure extends PlayListStates {
  final String errorMessage;

  PlayListFailure({required this.errorMessage});
}