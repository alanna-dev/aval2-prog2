enum MediaType {
  book(),
  movie(),
  music(),
}

abstract class Media {
  final MediaType type;
  final String title;
  final int duration;

  Media({required this.type, required this.title, required this.duration});

  String get name;
}
