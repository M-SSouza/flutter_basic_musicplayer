import 'dart:io';

import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../global_variables.dart';
import '../permissions.dart';
import '../utilities.dart';

String lastSong;

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Musicas'),
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: listSongs.length,
        itemBuilder: (context, index) {
          // print(index);
          return ListTile(
            title: Text(listSongs[index].path),
            onTap: () {
              playsong(player, index);
              // print(listSongs[index].path);
              // var duration = player.setFilePath(listSongs[index].path);
            },
          );
        },
      ),
    );
  }
}
