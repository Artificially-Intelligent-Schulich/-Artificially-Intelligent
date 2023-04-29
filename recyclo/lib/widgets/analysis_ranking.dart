import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/item.dart';

class Ranking extends StatelessWidget {
  List<Item> items;
  
  Ranking({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}