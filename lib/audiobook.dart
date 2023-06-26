import './media.dart';

class AudioBook extends Media {
  final String author;

  AudioBook(this.author,
      {required super.type, required super.title, required super.duration});

  String get name => author;
}
