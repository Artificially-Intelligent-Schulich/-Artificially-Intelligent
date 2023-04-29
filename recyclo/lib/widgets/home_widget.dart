import 'package:flutter/material.dart';
import 'package:recyclo/widgets/badges.dart';

import '../models/user.dart';

class HomeWidget extends StatelessWidget {
  final User user;

  const HomeWidget({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        'Total Points',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '${user.points}',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Badges(points: user.points),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: user.determineTree(),
            )
          ],
        ),
      ),
    );
  }
}
