import 'package:flutter/material.dart';
import 'package:recyclo/widgets/analysis_ranking.dart';
import 'package:recyclo/widgets/info_widget.dart';
import 'package:recyclo/models/stored_items.dart';
import 'package:recyclo/widgets/home_widget.dart';
import 'package:recyclo/widgets/item_list.dart';
import 'widgets/camera.dart';

import 'models/user.dart';

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
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  User user = User(name: 'Anna Summers', email: 'asummers@gmail.com');

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getWiget() {
    if (_selectedIndex == 0) {
      return InfoWidget();
    } else if (_selectedIndex == 1) {
      return Scaffold(
        body: SafeArea(child: Camera()),
      );
    } else if (_selectedIndex == 2) {
      return HomeWidget(user: user);
    } else if (_selectedIndex == 3) {
      return AnalysisRanking(user: user);
    } else if (_selectedIndex == 4) {
      /*return const Text(
        'Index 4: List',
        style: optionStyle,
      );*/
      return ItemList();
    } else {
      return Container(
        child: const Text('ReCyclo'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    user.setupUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'ReCyclo',
          style: TextStyle(fontSize: 42, fontFamily: 'OoohBaby'),
        ),
      ),
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
