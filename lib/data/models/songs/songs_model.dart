import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

class SongsModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? realseDate;
  String? imageUrl;
  String? songUrl;

  SongsModel(
      {required this.title,
      required this.artist,
      required this.duration,
      required this.realseDate,
      required this.imageUrl,
      required this.songUrl});

  SongsModel.fromJson(Map<String, dynamic> data) {
    title = data["title"];
    artist = data["artist"];
    duration = data["duration"];
    realseDate = data["realseDate"];
    imageUrl = data["imageUrl"];
    songUrl = data["songUrl"];
  }
}

extension SongsModelX on SongsModel {
  SongsEntites toEntity() {
    return SongsEntites(
      songUrl: songUrl!,
        title: title!,
        artist: artist!,
        duration: duration!,
        realseDate: realseDate!,
        imageUrl: imageUrl!,);
  }
}
