//shows badges and tree
//maybe google sign in

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: const AppBar(
        //   color: Colors.blue,
        // ),
        body: Center(
          child: Text('This works'),
        ),
      ),
    );
  }
}
