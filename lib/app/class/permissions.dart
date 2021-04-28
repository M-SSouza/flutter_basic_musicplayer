import 'package:permission_handler/permission_handler.dart';

checkpermissions() async {
  var externalStorage = await Permission.storage.status;

  // print(externalStorage);

  if (!externalStorage.isGranted) {
    await Permission.storage.request();
  } else {
    if (externalStorage.isUndetermined) {
      await Permission.storage.request();
    }
  }
}
