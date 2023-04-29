import 'package:flutter/material.dart';

import 'item.dart';

class User {
  final String name;
  final String email;
  final int points;
  final AssetImage badges;
  final AssetImage tree;
  final Item item;

  User(
      {required this.name,
      required this.email,
      required this.points,
      required this.badges,
      required this.tree,
      required this.item});
}
