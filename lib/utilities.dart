import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:just_audio/just_audio.dart';

import 'global_variables.dart';

Future<List<SongInfo>> getAllSongs() async {
  // String path = await ExtStorage.getExternalStorageDirectory();

  // Directory extDir = Directory(path);

  // List<FileSystemEntity> _files;

  // _files = await Future.value(extDir
  //     .listSync(recursive: true, followLinks: false)
  //     .where((i) => i.path.endsWith('.mp3'))
  //     .toList());

  // print(_files.length);

  // _files.forEach((element) {
  //   print(element.path);
  // });
  // return _files;
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  List<SongInfo> songs = await audioQuery.getSongs();
  return songs;
}

Future<void> getsongs() async {
  listSongs = await getAllSongs();
}

playsong(AudioPlayer player, int index) async {
  await player.setFilePath(listSongs[index].filePath);
  await player.play();
}

pauseOrresume(AudioPlayer player) async {
  if (player.playing) {
    await player.pause();
  } else {
    player.play();
  }
}
