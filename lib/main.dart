import 'package:flutter/material.dart';
import 'package:flutter_basic_musicplayer/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/class/permissions.dart';
import 'app/class/utilities.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkpermissions();
  await getsongs();
  runApp(ModularApp(module: AppModule()));
}
