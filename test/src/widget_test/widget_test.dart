import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:oldwave/main.dart' as app;
import 'package:oldwave/src/models/product.dart';

import 'package:oldwave/src/ui/home.dart';
import 'package:oldwave/src/ui/product_list.dart';
import 'package:provider/provider.dart';

void main() {

    testWidgets('Test search', (tester) async {
      await tester.pumpWidget(app.MyApp());
      var input = find.widgetWithText(TextField, 'Estoy buscando.....');

      expect(find.text('Estoy buscando.....'), findsOneWidget);
      await tester.tap(input);
      await tester.enterText(input, "cafetera");
      await tester.pumpAndSettle();

      expect(find.text('cafetera'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.search));
      await tester.pumpAndSettle();

      expect(find.byType(ProductList), findsOneWidget);
      expect(find.byType(Home), findsNothing);
    });

}
