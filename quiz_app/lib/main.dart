import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: TextTheme(
          caption: TextStyle(
            fontSize: 22.0, 
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        fontFamily: 'Georgia',
        ),

      home: HomePage(),
    );
  }
}
