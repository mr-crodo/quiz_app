import 'package:flutter/material.dart';

class MyFlex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Верстка теория'),
      ),
      body: Container(
        color: Colors.grey,
        child: Row(
          // eto svoystvo desytvuet kak Flex elementi
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BiggerColorBox(),
            Flexible(
              fit: FlexFit.loose,
              flex: 2,
              child: ColorBox()
              ),
              Spacer(
              flex: 1,
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: ColorBox()
              ),
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
      // child: Text('123'),
    );
  }
}

class BiggerColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.green[500],
        border: Border.all(),
      ),
    );
  }
}
