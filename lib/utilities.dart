import 'dart:io';

import 'package:ext_storage/ext_storage.dart';
import 'package:just_audio/just_audio.dart';

import 'global_variables.dart';

Future<List<FileSystemEntity>> getAllSongs() async {
  String path = await ExtStorage.getExternalStorageDirectory();

  Directory extDir = Directory(path);

  List<FileSystemEntity> _files;

  _files = await Future.value(extDir
      .listSync(recursive: true, followLinks: false)
      .where((i) => i.path.endsWith('.mp3'))
      .toList());

  print(_files.length);

  _files.forEach((element) {
    print(element.path);
  });
  return _files;
}

Future<void> getsongs() async {
  listSongs = await getAllSongs();
}

playsong(AudioPlayer player, int index) async {
  await player.setFilePath(listSongs[index].path);
  await player.play();
}
