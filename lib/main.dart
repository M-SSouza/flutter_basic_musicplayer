import 'package:flutter/material.dart';
import 'package:flutter_basic_musicplayer/app/app_module.dart';
import 'package:flutter_basic_musicplayer/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/class/permissions.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await checkpermissions();
  await utilities.getsongs();
  runApp(ModularApp(module: AppModule()));
}
