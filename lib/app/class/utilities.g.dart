// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'utilities.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Utilities on _UtilitiesBase, Store {
  final _$audioQueryAtom = Atom(name: '_UtilitiesBase.audioQuery');

  @override
  FlutterAudioQuery get audioQuery {
    _$audioQueryAtom.reportRead();
    return super.audioQuery;
  }

  @override
  set audioQuery(FlutterAudioQuery value) {
    _$audioQueryAtom.reportWrite(value, super.audioQuery, () {
      super.audioQuery = value;
    });
  }

  final _$getsongsAsyncAction = AsyncAction('_UtilitiesBase.getsongs');

  @override
  Future<void> getsongs() {
    return _$getsongsAsyncAction.run(() => super.getsongs());
  }

  final _$playsongAsyncAction = AsyncAction('_UtilitiesBase.playsong');

  @override
  Future playsong(AudioPlayer player, int index) {
    return _$playsongAsyncAction.run(() => super.playsong(player, index));
  }

  final _$pauseOrresumeAsyncAction =
      AsyncAction('_UtilitiesBase.pauseOrresume');

  @override
  Future pauseOrresume(AudioPlayer player) {
    return _$pauseOrresumeAsyncAction.run(() => super.pauseOrresume(player));
  }

  @override
  String toString() {
    return '''
audioQuery: ${audioQuery}
    ''';
  }
}
