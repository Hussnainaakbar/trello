import 'package:flutter/material.dart';
import 'package:trello/app_bar.dart';
import 'package:trello/view_container.dart';

import 'header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [Toper(), SizedBox(height: 10), ShowContent()],
      ),
    );
  }
}
