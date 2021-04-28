import 'player_music_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'player_music_page.dart';

class PlayerMusicModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $PlayerMusicController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => PlayerMusicPage()),
      ];

  static Inject get to => Inject<PlayerMusicModule>.of();
}
