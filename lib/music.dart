import './media.dart';

class Music extends Media {
  final String artist;

  Music(this.artist,
      {required super.type, required super.title, required super.duration});

  String get name => artist;
}
