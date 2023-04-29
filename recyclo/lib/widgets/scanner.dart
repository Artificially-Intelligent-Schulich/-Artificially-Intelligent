import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:recyclo/services/userService.dart';

class Scanner extends StatefulWidget {
  Scanner({super.key}){
    loadUser();
  }

  loadUser() async {
    final results = await UserService().getUser();
    print(results.length);
    results.forEach((v) {
      print(v.email);
    });
  }

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Scanner Page'),
      ),
    );
  }
}