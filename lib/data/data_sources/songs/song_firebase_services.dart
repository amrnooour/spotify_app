import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:spotify_app/data/models/songs/songs_model.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

abstract class SongFirebaseServices {
  Future<Either> getNewsSongs();
  Future<Either> getPlayList();

}

class SongFirebaseServicesImpl extends SongFirebaseServices {
  @override
  Future<Either> getNewsSongs() async {
    try {
      List<SongsEntites> songs = [];
      var data = await FirebaseFirestore.instance
          .collection("songs")
          .orderBy("realseDate")
          .limit(3)
          .get();
      for (var element in data.docs) {
        var songsModel = SongsModel.fromJson(element.data());
        songs.add(songsModel.toEntity());
      }
      return right(songs);
    } catch (e) {
      return left(e.toString());
    }
  }
  
  @override
  Future<Either> getPlayList() async{
    try {
      List<SongsEntites> songs = [];
      var data = await FirebaseFirestore.instance
          .collection("songs")
          .orderBy("realseDate")
          .get();
      for (var element in data.docs) {
        var songsModel = SongsModel.fromJson(element.data());
        songs.add(songsModel.toEntity());
      }
      return right(songs);
    } catch (e) {
      return left(e.toString());
    }
  }
}
