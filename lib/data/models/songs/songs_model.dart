import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_app/domain/entites/songs/songs_entites.dart';

class SongsModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? realseDate;

  SongsModel(
      {required this.title,
      required this.artist,
      required this.duration,
      required this.realseDate});

  SongsModel.fromJson(Map<String, dynamic> data) {
    title = data["title"];
    artist = data["atist"];
    duration = data["duration"];
    realseDate = data["realseDate"];
  }
}

extension SongsModelX on SongsModel {
  SongsEntites toEntity() {
    return SongsEntites(
        title: title!,
        artist: artist!,
        duration: duration!,
        realseDate: realseDate!);
  }
}
