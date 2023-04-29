//items previously scanned

import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class StoredItemsPage extends StatefulWidget {
  const StoredItemsPage({super.key});

  @override
  State<StoredItemsPage> createState() => _StoredItemsPageState();
}

class _StoredItemsPageState extends State<StoredItemsPage> {
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
