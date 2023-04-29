import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: NavBar(),
        body: Center(
          child: Text('This works'),
        ),
      ),
    );
  }
}
