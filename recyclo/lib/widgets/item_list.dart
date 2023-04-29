import 'package:flutter/material.dart';
import 'package:recyclo/models/stored_items.dart';

import '../models/item.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  Widget createListWidget(List<Item> items) {
    //final double width = MediaQuery.of(context.size.height);
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
            ),
            color: Colors.green,
          ),
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                height: 80,
                width: 1000,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)), // border only
                ), // box decoration
                child: Center(
                  child: Text(
                    "ReCyclo",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.green,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                for (var i in items)
                  Card(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color.fromARGB(255, 78, 80, 78),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.9, 0.1],
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                    'assets/images/${i.category}.png'),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                i.itemName,
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 50.0),
                              child: Flexible(
                                child: Text(
                                  i.category,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
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
