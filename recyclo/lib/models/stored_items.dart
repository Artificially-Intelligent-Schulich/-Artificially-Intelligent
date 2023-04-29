import 'package:flutter/material.dart';

import 'dart:math';
import './item.dart';

//random String generation used from: https://medium.com/@zeerockyf5/how-to-easily-generate-dart-random-string-easy-flutter-guide-7e72ef42744

class StoredItems with ChangeNotifier {
  final List<Item> _items = [
    Item(
      id: 'i1',
      itemName: 'candy box',
      category: 'cardboard',
      date: DateTime.now(),
    ),
    Item(
      id: 'i2',
      itemName: 'container',
      category: 'plastic',
      date: DateTime.now(),
    ),
    Item(
      id: 'i3',
      itemName: 'redbull can',
      category: 'metal',
      date: DateTime.now(),
    ),
    Item(
      id: 'i4',
      itemName: 'bag',
      category: 'trash',
      date: DateTime.now(),
    ),
  ];

  List<Item> get items {
    return [..._items];
  }

  Item findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  String randomString() {
    final random = Random();
    const allChars =
        'AaBbCcDdlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1EeFfGgHhIiJjKkL234567890';
    final randomString =
        List.generate(10, (index) => allChars[random.nextInt(allChars.length)])
            .join();
    return randomString;
  }

  void addProduct(String name, String category) {
    Item item = Item(
        id: randomString(),
        itemName: name,
        category: category,
        date: DateTime.now());
    _items.add(item);
    notifyListeners();
  }
}
