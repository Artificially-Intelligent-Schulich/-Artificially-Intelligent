import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RankingElement extends StatelessWidget {
  final int rank;
  final String type;

  const RankingElement({super.key, required this.rank, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(rank.toString()),
        Text(type)
      ]
    );
  }
}