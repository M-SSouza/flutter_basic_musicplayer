import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';
import 'package:flutter_basic_musicplayer/app/class/utilities.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'player_music_controller.dart';

class PlayerMusicPage extends StatefulWidget {
  // final SongInfo song;
  // const PlayerMusicPage({Key key, this.song}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState
    extends ModularState<PlayerMusicPage, PlayerMusicController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     title: Text(widget.song.title),
      //     backgroundColor: Color.fromRGBO(0, 0, 0, .75)), //Talvez .7
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            color: Color.fromRGBO(0, 0, 0, 1),
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      height: constraints.maxHeight * .6,
                      width: constraints.maxWidth,
                      // decoration: BoxDecoration(
                      //   // color: Colors.blue,
                      //   // color: Color.fromRGBO(0, 0, 0, .1),
                      //   color: Colors.transparent,
                      //   image: DecorationImage(fit: BoxFit.cover),
                      // ),
                      child: Image(
                        image: (() {
                          if (globalVariables.actualSong.albumArtwork == null) {
                            return AssetImage('lib/assets/images/notImage.png');
                          } else {
                            return FileImage(
                                File(globalVariables.actualSong.albumArtwork));
                          }
                        }()),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: constraints.maxHeight * .6,
                      width: constraints.maxWidth,
                      color: Color.fromRGBO(0, 0, 0, .6),
                    ),
                    Container(
                      height: constraints.maxHeight * .6,
                      width: constraints.maxWidth,
                      child: Center(
                        child: Container(
                          height: constraints.maxHeight * .3,
                          width: constraints.maxWidth * .75,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            // color: Color.fromRGBO(0, 0, 0, .1),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            image: DecorationImage(
                                image: (() {
                                  if (globalVariables.actualSong.albumArtwork ==
                                      null) {
                                    return AssetImage(
                                        'lib/assets/images/notImage.png');
                                  } else {
                                    return FileImage(File(globalVariables
                                        .actualSong.albumArtwork));
                                  }
                                }()),
                                fit: BoxFit.cover),
                          ),
                          child: Container(),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Observer(builder: (_) {
                        return AppBar(
                          title: Text(globalVariables.actualSong.title),
                          // backgroundColor: Color.fromRGBO(0, 0, 0, .75),
                          backgroundColor: Color.fromRGBO(0, 0, 0, .15),
                          // elevation: 0.0,
                        );
                      }), //Talvez .7
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
