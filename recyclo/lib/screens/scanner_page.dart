//scans object and adds it to your page

import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavBar(),
        body: Center(
          child: Text('This works'),
        ),
      ),
    );
  }
}
