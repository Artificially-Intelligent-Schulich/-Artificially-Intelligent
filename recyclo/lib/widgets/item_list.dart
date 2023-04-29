import 'package:flutter/material.dart';
import 'package:recyclo/models/stored_items.dart';

import '../models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  Widget createListWidget(List<Item> items) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var i in items)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/${i.category}.png'),
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: Text(
                  i.itemName,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: Text(
                  i.category,
                  style: const TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: createListWidget(StoredItems().items),
    );
  }
}
