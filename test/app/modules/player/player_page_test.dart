import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:music_media_player_flutter/app/modules/player/player_page.dart';

main() {
  testWidgets('PlayerPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(PlayerPage(title: 'Player')));
    final titleFinder = find.text('Player');
    expect(titleFinder, findsOneWidget);
  });
}
