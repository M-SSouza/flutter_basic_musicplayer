import 'package:flutter/material.dart';
import 'package:flutter_basic_musicplayer/app/class/global_variables.dart';
import 'package:flutter_basic_musicplayer/app/class/utilities.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:just_audio/just_audio.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Musicas'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Pausar'),
              onTap: () {
                pauseOrresume(player);
              },
            );
          },
        ),
      ),
      body: LayoutBuilder(builder: (_, constraints) {
        return Column(
          children: [
            Container(
              height: constraints.maxHeight * .9,
              width: size.width,
              child: ListView.builder(
                itemCount: listSongs.length,
                itemBuilder: (context, index) {
                  // print(index);
                  return ListTile(
                    title: Text(listSongs[index].title),
                    onTap: () {
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (_) => SongScreen(listSongs[index]),
                      //   ),
                      // );
                      playsong(player, index);
                      actualSong = listSongs[index].id;
                      Modular.to
                          .pushNamed('/player', arguments: listSongs[index]);

                      // print(listSongs[index].path);
                      // var duration = player.setFilePath(listSongs[index].path);
                    },
                  );
                },
              ),
            ),
            InkWell(
              child: Container(
                height: constraints.maxHeight * .1,
                width: constraints.maxWidth,
                color: Colors.cyan,
                child: Center(
                  child: Text('Musica Atual'),
                ),
              ),
              onTap: () {
                // Navigator.of(context).push(
                //         MaterialPageRoute(
                //           builder: (_) => SongScreen(listSongs[index]),
                //         ),
                //       );
              },
            ),
          ],
        );
      }),
    );
  }
}
