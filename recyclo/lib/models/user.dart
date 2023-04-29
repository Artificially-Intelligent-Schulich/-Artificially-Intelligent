import 'package:flutter/material.dart';
import 'package:recyclo/models/stored_items.dart';
import 'package:recyclo/widgets/badges.dart';

import 'item.dart';

class User {
  final String name;
  final String email;
  final int points;
  late Badges badges;
  Image tree;
  late StoredItems item;
  late Map<String, int> categoryTally;

  User({
    required this.name,
    required this.email,
    this.points = 15,
    this.tree = const Image(image: AssetImage('assets/images/sprout.png')),
  }) {
    categoryTally = {
      'cardboard': 0,
      'paper': 0,
      'plastic': 0,
      'metal': 0,
      'trash': 0
    };
    item = StoredItems();
  }

  void setupUser() {
    badges = Badges(points: points);
  }

  Image determineTree() {
    if (points <= 5) {
      tree = const Image(
        image: AssetImage('assets/images/sprout.png'),
        height: 200,
      );
    } else if (points <= 10) {
      tree = const Image(image: AssetImage('assets/images/smalltree.png'));
    } else if (points <= 15) {
      tree = const Image(image: AssetImage('assets/images/bigtree2.png'));
    } else {
      tree = const Image(image: AssetImage('assets/images/forest.png'));
    }
    return tree;
  }
}
