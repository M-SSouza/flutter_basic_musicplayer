import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'package:flutter_basic_musicplayer/screens/song_screen.dart';

import '../global_variables.dart';
import '../utilities.dart';

// int lastSong;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // print(Permission.storage.status);
    // Permission.storage.request();

    // listSongs.
    // print(listSongs.forEach((i) => i.path));
    // Future<void> teste() async {
    //   print(Permission.storage.status);
    //   if (!await Permission.storage.isGranted) {
    //     Permission.storage.request();
    //   }
    //   // if (await Permission.contacts.request().isGranted) {}
    //   // Map<Permission, PermissionStatus> statuses = await [
    //   //   Permission.storage,
    //   // ].request();
    //   // print(statuses[Permission.storage]);
    // }
  }

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
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => SongScreen(listSongs[index]),
                        ),
                      );
                      playsong(player, index);
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
