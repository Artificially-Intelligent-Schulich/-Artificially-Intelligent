// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:recyclo/screens/analysis_page.dart';
// import 'package:recyclo/screens/information_page.dart';
// import 'package:recyclo/screens/scanner_page.dart';
// import 'package:recyclo/screens/stored_items_page.dart';

// import 'screens/home_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   final GoRouter _router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return const HomePage();
//         },
//         routes: <RouteBase>[
//           GoRoute(
//             path: 'info',
//             builder: (BuildContext context, GoRouterState state) {
//               return const InformationPage();
//             },
//           ),
//           GoRoute(
//             path: 'analysis',
//             builder: (BuildContext context, GoRouterState state) {
//               return const AnalysisPage();
//             },
//           ),
//           GoRoute(
//             path: 'scanner',
//             builder: (BuildContext context, GoRouterState state) {
//               return const ScannerPage();
//             },
//           ),
//           GoRoute(
//             path: 'items',
//             builder: (BuildContext context, GoRouterState state) {
//               return const StoredItemsPage();
//             },
//           ),
//         ],
//       ),
//     ],
//   );

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       title: 'Recyclo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSwatch(
//           backgroundColor: Colors.green,
//         ),
//       ),
//       routerConfig: _router,
//     );
//     // return MaterialApp(
//     //   title: 'Recyclo',
//     //   theme: ThemeData(
//     //     primarySwatch: Colors.green,
//     //   ),
//     //   home: const MyHomePage(title: 'Recyclo'),
//     // );
//   }
// }

import 'package:flutter/material.dart';
import 'package:recyclo/widgets/info_widget.dart';

void main() => runApp(const Recyclo());

class Recyclo extends StatelessWidget {
  const Recyclo({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: RecycloStateful(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RecycloStateful extends StatefulWidget {
  const RecycloStateful({super.key});

  @override
  State<RecycloStateful> createState() => _RecycloStatefulState();
}

class _RecycloStatefulState extends State<RecycloStateful> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getWiget() {
    if (_selectedIndex == 0) {
      return InfoWidget();
    } else if (_selectedIndex == 1) {
      return const Text(
        'Index 1: Scanner',
        style: optionStyle,
      );
    } else if (_selectedIndex == 2) {
      return const Text(
        'Index 2: Home',
        style: optionStyle,
      );
    } else if (_selectedIndex == 3) {
      return const Text(
        'Index 3: Analysis',
        style: optionStyle,
      );
    } else if (_selectedIndex == 4) {
      return const Text(
        'Index 4: List',
        style: optionStyle,
      );
    } else {
      return Container(
        child: const Text('This works'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: getWiget()),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'Scanner',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_outlined),
            label: 'Analysis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Items',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[300],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
