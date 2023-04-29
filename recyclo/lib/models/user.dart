import 'package:flutter/material.dart';
import 'package:recyclo/widgets/badges.dart';

import 'item.dart';

class User {
  final String name;
  final String email;
  final int points;
  late Badges badges;
  late AssetImage tree;
  late List<Item> item;

  User({
    required this.name,
    required this.email,
    this.points = 0,
  });

  void setupUser() {
    badges = Badges(points: points);
    tree = AssetImage('');
  }
}
