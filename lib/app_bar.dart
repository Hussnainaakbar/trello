import 'package:flutter/material.dart';

PreferredSizeWidget buildAppBar() => AppBar(
      backgroundColor: Colors.blue[900],
      centerTitle: true,
      title: const Text(
        'Trello',
        style: TextStyle(
            fontSize: 40, fontWeight: FontWeight.w300, color: Colors.white),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 35,
              color: Colors.white,
            )),
        const SizedBox(
          width: 30,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app_outlined,
              size: 40,
              color: Colors.white,
            )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
