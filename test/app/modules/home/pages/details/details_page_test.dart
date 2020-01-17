import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:music_media_player_flutter/app/modules/home/pages/details/details_page.dart';

main() {
  testWidgets('DetailsPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DetailsPage(title: 'Details')));
    final titleFinder = find.text('Details');
    expect(titleFinder, findsOneWidget);
  });
}
