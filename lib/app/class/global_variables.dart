import 'package:just_audio/just_audio.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

part 'global_variables.g.dart';

class GlobalVariables = _GlobalVariablesBase with _$GlobalVariables;

abstract class _GlobalVariablesBase with Store {
  // ObservableList<SongInfo> listSongs = ObservableList<SongInfo>();
  @observable
  List<SongInfo> listSongs;

  SongInfo lastSong;

  @observable
  AudioPlayer player = AudioPlayer();

  @observable
  SongInfo actualSong;

  @action
  void setActualSong(int index) {
    actualSong = listSongs[index];
  }
}
