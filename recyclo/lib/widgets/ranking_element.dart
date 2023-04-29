import 'package:flutter/material.dart';

class RankingElement extends StatelessWidget {
  final int rank;
  final String type;
  final int percentage;

  const RankingElement({super.key, required this.rank, required this.type, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 64,
          child: Text(rank.toString() + ". ")
        ),
        SizedBox(
          width: 64,
          child: Text(type + " ")
        ),
        SizedBox(
          width: 64,
          child: Text("%" + percentage.toString())
        )
      ]
    );
  }
}