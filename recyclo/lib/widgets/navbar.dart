import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({
    super.key,
    this.color = Colors.green,
    this.size = 24.0,
  });

  final Color color;
  final double size;
  final mainRoute = "/";

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    var route = ModalRoute.of(context);

    return BottomAppBar(
      color: color,
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.info,
                  color: Colors.white,
                  semanticLabel: 'Info',
                ),
                onPressed: () {
                  final GoRouterState state = GoRouterState.of(context);
                  // print('The location is ${state.location}');
                  if (state.location == '/info') {
                    null;
                  } else {
                    context.pushReplacement('/info');
                  }
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  semanticLabel: 'Home',
                ),
                onPressed: () {
                  final GoRouterState state = GoRouterState.of(context);
                  // print('The location is ${state.location}');
                  if (state.location == '/') {
                    null;
                  } else {
                    context.pushReplacement('/');
                  }
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.camera,
                  color: Colors.white,
                  semanticLabel: 'Home',
                ),
                onPressed: () {
                  final GoRouterState state = GoRouterState.of(context);
                  // print('The location is ${state.location}');
                  if (state.location == '/scanner') {
                    null;
                  } else {
                    context.pushReplacement('/scanner');
                  }
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.analytics,
                  color: Colors.white,
                  semanticLabel: 'Analysis',
                ),
                onPressed: () {
                  final GoRouterState state = GoRouterState.of(context);
                  // print('The location is ${state.location}');
                  if (state.location == '/analysis') {
                    null;
                  } else {
                    context.pushReplacement('/analysis');
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
