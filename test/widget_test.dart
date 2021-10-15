// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:oldwave/main.dart' as app;

import 'package:oldwave/src/ui/home.dart';
import 'package:oldwave/src/ui/product_list.dart';
import 'package:provider/provider.dart';

void main() {

  // IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Home Page Widget Tests', () {
    // Test 1
    testWidgets('E2E Test', (tester) async {
      await tester.pumpWidget(app.MyApp());
      var input = find.widgetWithText(TextField, 'Estoy buscando.....');
      expect(find.text('Estoy buscando.....'), findsOneWidget);
      await tester.tap(input);
      await tester.enterText(input, "cafetera");
      await tester.pumpAndSettle();
      expect(find.text('cafetera'), findsOneWidget);
      expect(find.text('Estoy buscando.....'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();
      expect(find.byType(ProductList), findsOneWidget);
      expect(find.byType(Home), findsNothing);
      expect(find.text('cafetera'), findsOneWidget);
    });
  });
}
