import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';

void main() {
  // Create a minimal backend URL for the widget
  const backendUrl = 'http://localhost:3000';

  testWidgets('Notes App loads NotesHomePage', (WidgetTester tester) async {
    await tester.pumpWidget(const MyNotesApp(backendUrl: backendUrl));

    expect(find.text('Notes'), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('FAB exists to add note', (WidgetTester tester) async {
    await tester.pumpWidget(const MyNotesApp(backendUrl: backendUrl));

    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}

