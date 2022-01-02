import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Контаинер Теория'),
      ),
      body: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                    'https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80')
                .image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Контаинер Теория'),
  //     ),
  //     body: Center(
  //       child: Container(
  //           decoration: BoxDecoration(
  //             // shape: BoxShape.circle,
  //             border: Border.all(),
  //             color: Colors.amber[600],
  //           ),
  //           alignment: Alignment.center,
  //           // width: 300,
  //           // height: 300,
  //           margin: const EdgeInsets.all(30.0),
  //           padding: const EdgeInsets.all(0.0),
  //           child: Text('mrCrodo')),
  //     ),
  //   );
  // }
}
