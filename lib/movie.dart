import './media.dart';

class Movie extends Media {
  final String director;

  Movie(this.director,
    {required super.type, 
    required super.title, 
    required super.duration
    });

  String get name => director;
}
