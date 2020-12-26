import 'dart:io';

import 'package:ext_storage/ext_storage.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../permissions.dart';

List<FileSystemEntity> listSongs;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Future<List<FileSystemEntity>> getAllSongs() async {
  String path = await ExtStorage.getExternalStorageDirectory();

  Directory extDir = Directory(path);

  List<FileSystemEntity> _files;
  _files = extDir
      .listSync(recursive: true, followLinks: false)
      .where((i) => i.path.endsWith('.mp3'))
      .toList();

  _files.forEach((element) {
    print(element.path);
  });
  return _files;
}

void getsongs() async {
  listSongs = await getAllSongs();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // print(Permission.storage.status);
    // Permission.storage.request();
    checkpermissions();
    getsongs();
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
      body: ListView.builder(
        itemCount: listSongs.length,
        itemBuilder: (context, index) {
          // print(index);
          return ListTile(
            title: Text(listSongs[index].path),
            onTap: () {
              // print(listSongs[index].path);
              // var duration = player.setFilePath(listSongs[index].path);
              player.setFilePath(listSongs[index].path);
              player.play();
            },
          );
        },
      ),
    );
  }
}
