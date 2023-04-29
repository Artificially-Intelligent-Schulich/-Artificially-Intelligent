import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:recyclo/screens/analysis_page.dart';
import 'package:recyclo/screens/information_page.dart';
import 'package:recyclo/screens/scanner_page.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
        routes: <RouteBase>[
          // GoRoute(
          //   path: '/',
          //   builder: (BuildContext context, GoRouterState state) {
          //     return const HomePage();
          //   },
          // ),
          GoRoute(
            path: 'info',
            builder: (BuildContext context, GoRouterState state) {
              return const InformationPage();
            },
          ),
          GoRoute(
            // name: 'analysis',
            path: 'analysis',
            builder: (BuildContext context, GoRouterState state) {
              return const AnalysisPage();
            },
          ),
          GoRoute(
            path: 'scanner',
            builder: (BuildContext context, GoRouterState state) {
              return const ScannerPage();
            },
          ),
        ],
      ),
    ],
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Recyclo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.green,
        ),
      ),
      routerConfig: _router,
    );
    // return MaterialApp(
    //   title: 'Recyclo',
    //   theme: ThemeData(
    //     primarySwatch: Colors.green,
    //   ),
    //   home: const MyHomePage(title: 'Recyclo'),
    // );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       // backgroundColor:
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (() {}),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
