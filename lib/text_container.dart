import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  String textContent;
  MyText({required this.textContent, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3.0),
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.cyan[50],
      ),
      child: Text(
        textContent,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
