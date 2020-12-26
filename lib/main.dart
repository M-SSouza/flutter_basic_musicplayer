import 'package:flutter/material.dart';
import 'package:flutter_basic_musicplayer/permissions.dart';
import 'package:flutter_basic_musicplayer/screens/home_screen.dart';

import 'utilities.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final permissions = await checkpermissions();
  final songs = await getsongs();

  print('passou');

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
