import 'package:mobx/mobx.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:just_audio/just_audio.dart';
import 'global_variables.dart';

part 'utilities.g.dart';

class Utilities = _UtilitiesBase with _$Utilities;
GlobalVariables globalVariables = new GlobalVariables();

abstract class _UtilitiesBase with Store {
  @observable
  FlutterAudioQuery audioQuery = FlutterAudioQuery();

//   Future<List<SongInfo>> getAllSongs() async {
//   // String path = await ExtStorage.getExternalStorageDirectory();

//   // Directory extDir = Directory(path);

//   // List<FileSystemEntity> _files;

//   // _files = await Future.value(extDir
//   //     .listSync(recursive: true, followLinks: false)
//   //     .where((i) => i.path.endsWith('.mp3'))
//   //     .toList());

//   // print(_files.length);

//   // _files.forEach((element) {
//   //   print(element.path);
//   // });
//   // return _files;

//   globalVariables.listSongs = await audioQuery.getSongs();
//   return songs;
// }

  @action
  Future<void> getsongs() async {
    globalVariables.listSongs = await audioQuery.getSongs();
  }

  @action
  playsong(AudioPlayer player, int index) async {
    await player.setFilePath(globalVariables.listSongs[index].filePath);
    await player.play();
  }

  @action
  pauseOrresume(AudioPlayer player) async {
    if (player.playing) {
      await player.pause();
    } else {
      player.play();
    }
  }
}
