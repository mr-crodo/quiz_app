import 'package:flutter/material.dart';
import 'package:quiz_app/my_container.dart';
import 'package:quiz_app/my_flexible.dart';
import 'package:quiz_app/row_collumn.dart';
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
      theme: ThemeData(primarySwatch: Colors.amber),
      home: MyFlex(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тестирование'),
      ),
      body: Container(
        child: Center(
          child: Text('Здесь что то будет'),
        ),
      ),
    );
  }
}
