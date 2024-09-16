import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

class NewsSongsStates {}

class NewsSongsInitial extends NewsSongsStates {}

class NewsSongsLoading extends NewsSongsStates {}

class NewsSongsSuccess extends NewsSongsStates {
  final List<SongsEntites> songs;

  NewsSongsSuccess({required this.songs});
}

class NewsSongsFailure extends NewsSongsStates {
  final String errorMessage;

  NewsSongsFailure({required this.errorMessage});
}
