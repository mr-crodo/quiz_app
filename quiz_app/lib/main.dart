import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: PersonWidget(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;
  int _favoritCount = 87654;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
          child: IconButton(
        icon:
            (_isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
        onPressed: _toggleFavorite,
        color: Colors.red[500],
      ),
      ),
      SizedBox(
        width: 40,
        child: Container(
          child: Text('$_favoritCount'),
        ),
      ),
    ]);
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _isFavorited = false;
        _favoritCount -= 1;
      } else {
        _isFavorited = true;
        _favoritCount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Япония, Старшая Некома'),
      ),
      body: Container(child: _buildMainColumn()),
    );
  }

  Widget _buildMainColumn() => ListView(children: [
        _buildTopImage(),
        Center(
            child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(5),
                child: _buildRating(),
              ),
              Card(
                elevation: 5,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: _buildAction(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: _buildDesc(),
              )
            ],
          ),
        ))
      ]);

  Widget _buildTopImage() => Container(
      child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          elevation: 5,
          child: Image.asset(
            'assets/img/pngegg.png',
            fit: BoxFit.cover,
          )));

  Widget _buildRating() => ListTile(
        title: Text('Кантаи Лова',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            )),
        subtitle: Text('Япония, Старшая Некома'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[FavoriteWidget()],
        ),
      );

  Widget _buildAction() =>
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        _buildButton('Блокирубщий', Icons.star, Colors.black),
        _buildButton('Рост 188см', Icons.account_tree_rounded, Colors.black),
        _buildButton('Возраст 18', Icons.backup_sharp, Colors.black),
      ]);

  Widget _buildButton(String label, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.black,
          ),
          Container(
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );

  Widget _buildDesc() => Text(
      'В 6 уроке немного поговорим про виды State, а так же про'
      'управления состоянием. Выполним небольшую практику по верстке',
      softWrap: true,
      style: TextStyle(
        fontSize: 16.0,
      ));
}
