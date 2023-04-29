import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/item.dart';
import '../models/user.dart';

class Histogram extends StatelessWidget {
  List<Item> items;
  
  Histogram({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
        ],)
    );
  }
}