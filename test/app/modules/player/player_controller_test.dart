import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:music_media_player_flutter/app/modules/player/player_controller.dart';
import 'package:music_media_player_flutter/app/modules/player/player_module.dart';

void main() {
  initModule(PlayerModule());
  PlayerController player;

  setUp(() {
    player = PlayerModule.to.get<PlayerController>();
  });

  group('PlayerController Test', () {
    test("First Test", () {
      expect(player, isInstanceOf<PlayerController>());
    });

    test("Set Value", () {
      expect(player.value, equals(0));
      player.increment();
      expect(player.value, equals(1));
    });
  });
}
