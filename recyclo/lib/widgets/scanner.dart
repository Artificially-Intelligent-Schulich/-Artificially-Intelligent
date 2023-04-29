import 'package:flutter/material.dart';
import 'package:recyclo/services/api_service.dart';

class Scanner extends StatefulWidget {
  Scanner({super.key}){
    loadData();
  }

  loadData() async {
    final results = await ApiService().sendRequest();
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