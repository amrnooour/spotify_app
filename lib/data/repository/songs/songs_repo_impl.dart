import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/data_sources/songs/song_firebase_services.dart';
import 'package:spotify_app/domain/repository/songs/songs_repo.dart';
import 'package:spotify_app/services_locator.dart';

class SongsRepoImpl extends SongsRepo {
  @override
  Future<Either> getNewsSongs() async {
    return await sl<SongFirebaseServices>().getNewsSongs();
  }
}
