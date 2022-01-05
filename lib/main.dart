import 'package:flutter/material.dart';
import 'package:trello/my_home.dart';

void main() {
  runApp(const MyTrello());
}

class MyTrello extends StatelessWidget {
  const MyTrello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
