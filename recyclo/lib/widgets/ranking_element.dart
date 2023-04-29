import 'package:flutter/material.dart';

class RankingElement extends StatelessWidget {
  final int rank;
  final String type;
  final int percentage;

  const RankingElement(
      {super.key,
      required this.rank,
      required this.type,
      required this.percentage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      SizedBox(
          width: 64,
          child: Text(
            "$rank. ",
            style: TextStyle(fontSize: 16),
          )),
      SizedBox(
          width: 64,
          child: Text(
            "$type ",
            style: TextStyle(fontSize: 14),
          )),
      SizedBox(
          width: 64,
          child: Text(
            "${percentage.toString()}%",
            style: TextStyle(fontSize: 16),
          ))
    ]));
  }
}
