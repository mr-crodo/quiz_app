import 'package:flutter/material.dart';

class MyRowColmn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          // eto svoystvo upravlaet prostranstvom v stroke ili stolbce
          mainAxisSize: MainAxisSize.max,
          // eto svoystvo desytvuet kak Flex elementi
          mainAxisAlignment: MainAxisAlignment.center,
          // viravnivanie elementov po poperecnoy osi
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            ColorBox(),
            BiggerColorBox(),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        border: Border.all(),
      ),
    );
  }
}
