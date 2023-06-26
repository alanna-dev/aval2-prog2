import './media.dart';
import 'dart:convert';
import 'dart:io';

class DigitalLibrary {
  List<Media> medias = [];
  int tmd = 0;
  Map<String, dynamic> mapFile = {};

  addMedia(Media media) {
    medias.add(media);
  }

  loadMedia(String value) {
    var fileContent = File(value).readAsStringSync();
    mapFile = jsonDecode(fileContent);
  }

  listMedia(MediaType) {
    var parsedJson =
        jsonDecode(File('./media.json').readAsStringSync()) as List<dynamic>;
    List<Map<String, dynamic>> medias =
        List<Map<String, dynamic>>.from(parsedJson);
  }

  totalMediaDuration(MediaType type) {
    int totalDuration = 0;
    for (var media in medias) {
      if (media.type == type) {
        totalDuration += media.duration;
      }
    }
  }
}
