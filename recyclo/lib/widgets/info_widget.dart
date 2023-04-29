import 'package:flutter/material.dart';
import 'info_list_element.dart';

class InfoWidget extends StatelessWidget {
  InfoWidget({super.key});
  var elements = [];
  final Uri _url = Uri.parse('https://youtu.be/dQw4w9WgXcQ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InfoListElement(
          name: "Rick Astley", 
          url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"), 
          imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
          )
      )
    );
  }
}