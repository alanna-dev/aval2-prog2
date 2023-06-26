import './media.dart';
import 'dart:convert';
import 'dart:io';

class DigitalLibrary {
  List<Type> medias = [];
  int tmd = 0;
  var mapFile = new Map();
  addMedia(Media) {
    medias.add(Media.type);
  }

  loadMedia(String value) {
    var fileContent = {File(value).readAsStringSync()};
    mapFile = {fileContent} as Map;
  }

  listMedia(MediaType type) {
    var parsedJson = jsonDecode(File('./media.json').readAsStringSync()) as List<dynamic>;
    List<Map<String, dynamic>> medias = List<Map<String, dynamic>>.from(parsedJson);
    print(medias);
  }

  totalMediaDuration(Type type) {

    for (int c in mapFile['duration']) {
      int c2 = tmd;
      tmd = c + c2;
    }
  }
}
