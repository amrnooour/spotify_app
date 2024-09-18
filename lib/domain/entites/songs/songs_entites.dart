import 'package:cloud_firestore/cloud_firestore.dart';

class SongsEntites {
  final String title;
  final String artist;
  final num duration;
  final Timestamp realseDate;
  final String imageUrl;
  final String songUrl;

  SongsEntites( 
      {
      required this.songUrl,
      required this.title,
      required this.artist,
      required this.duration,
      required this.realseDate,
      required this.imageUrl});
}
