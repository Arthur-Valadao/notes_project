import 'package:flutter/material.dart';
import 'package:notes_project/src/features/add_notes/view/add_notes_view.dart';
import 'package:notes_project/src/features/home_page/view/home_page_view.dart';

class AppView extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        AddNotes.route: (context) => AddNotes(),
      },
    );
  }
}
