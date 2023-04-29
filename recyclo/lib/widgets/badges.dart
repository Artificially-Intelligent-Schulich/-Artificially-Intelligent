import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Badges extends StatelessWidget {
  Badges({
    super.key,
    required this.points,
  });

  final int points;
  final List<AssetImage> displayedBadges = [];

  void determineBadges() {
    if (displayedBadges.isEmpty) {
      int i = 0;
      while (i < 5) {
        displayedBadges.add(const AssetImage('assets/images/grey_badge.png'));
        ++i;
      }
    }
    if (points < 5) {
      displayedBadges[0] = const AssetImage('assets/images/grey_badge.png');
      displayedBadges[1] = const AssetImage('assets/images/grey_badge.png');
      displayedBadges[2] = const AssetImage('assets/images/grey_badge.png');
      displayedBadges[3] = const AssetImage('assets/images/grey_badge.png');
    }
    if (points >= 5) {
      displayedBadges[0] = const AssetImage('assets/images/shield.png');
    }
    if (points >= 10) {
      displayedBadges[1] = const AssetImage('assets/images/recycle.png');
    }
    if (points >= 15) {
      displayedBadges[2] = const AssetImage('assets/images/earth.png');
    }
    if (points >= 20) {
      displayedBadges[3] = const AssetImage('assets/images/tree_2.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    determineBadges();
    return Row(children: <Widget>[
      Image(image: displayedBadges[0]),
      Spacer(),
      Image(image: displayedBadges[1]),
      Spacer(),
      Image(image: displayedBadges[2]),
      Spacer(),
      Image(image: displayedBadges[3]),
    ]);
  }
}
