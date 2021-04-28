// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_variables.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GlobalVariables on _GlobalVariablesBase, Store {
  final _$listSongsAtom = Atom(name: '_GlobalVariablesBase.listSongs');

  @override
  List<SongInfo> get listSongs {
    _$listSongsAtom.reportRead();
    return super.listSongs;
  }

  @override
  set listSongs(List<SongInfo> value) {
    _$listSongsAtom.reportWrite(value, super.listSongs, () {
      super.listSongs = value;
    });
  }

  final _$playerAtom = Atom(name: '_GlobalVariablesBase.player');

  @override
  AudioPlayer get player {
    _$playerAtom.reportRead();
    return super.player;
  }

  @override
  set player(AudioPlayer value) {
    _$playerAtom.reportWrite(value, super.player, () {
      super.player = value;
    });
  }

  final _$actualSongAtom = Atom(name: '_GlobalVariablesBase.actualSong');

  @override
  SongInfo get actualSong {
    _$actualSongAtom.reportRead();
    return super.actualSong;
  }

  @override
  set actualSong(SongInfo value) {
    _$actualSongAtom.reportWrite(value, super.actualSong, () {
      super.actualSong = value;
    });
  }

  final _$_GlobalVariablesBaseActionController =
      ActionController(name: '_GlobalVariablesBase');

  @override
  void setActualSong(int index) {
    final _$actionInfo = _$_GlobalVariablesBaseActionController.startAction(
        name: '_GlobalVariablesBase.setActualSong');
    try {
      return super.setActualSong(index);
    } finally {
      _$_GlobalVariablesBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listSongs: ${listSongs},
player: ${player},
actualSong: ${actualSong}
    ''';
  }
}
