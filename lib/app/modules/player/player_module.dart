import 'package:music_media_player_flutter/app/modules/player/player_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:music_media_player_flutter/app/modules/player/player_page.dart';

class PlayerModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PlayerController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PlayerPage()),
      ];

  static Inject get to => Inject<PlayerModule>.of();
}
