import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final Function onClearState;

  Result({Key? key, 
    required this.count, 
    required this.total, 
    required this.onClearState})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = "";
    Widget img;

    if (0 <= count && count <= 3) {
      msg = 'Темная сторона\n не для тебя, дружок. Ты слишком хорошо';
      img = Image.asset('assets/img/bad.jpg');
    } else if ((4 <= count && count <= 7)) {
      msg = 'Совсем чуть-чуть до цели';
      img = Image.asset('assets/img/norm.jpg');
    } else {
      msg = 'Поздравляю ты не чист во плоти!';
      img = Image.asset('assets/img/good.jpg');
    }

    return Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black,
                blurRadius: 15.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 5.0))
          ],
          borderRadius: BorderRadius.circular(30.0),
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFF5337ff),
              Color(0xFF8131ff),
              Color(0xFFbd27ff),
            ],
          ),
        ),
        child: Column(children: <Widget>[
          Container(
              // width: 120,
              // height: 120,
              child: FittedBox(
                fit: BoxFit.contain,
                child: img,
              )),
          Container(
            child: Text(
              msg, 
              textAlign: TextAlign.center
              )),


          Divider(
            color: Colors.white,
          ),
          Text(
            'Верно ответил на $count из $total',
          ),
          Divider(
            color: Colors.white,
          ),

          TextButton(
            child: Text(
              'Пройти еще раз',
              style: TextStyle(
                fontSize: 22.0
              )
            ),
            onPressed: onClearState(),
          )
        ]));
  }
}
