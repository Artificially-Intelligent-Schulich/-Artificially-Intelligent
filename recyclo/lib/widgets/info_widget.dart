import 'package:flutter/material.dart';
import 'info_list_element.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
            ListView(
              children: [
                const Text("Click the links below for more information on how different recyclables are processed"),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
                ),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
                ),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
               ),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
                ),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
                ),
                InfoListElement(
                  name: "Rick Astley", 
                  url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
                  info: "Gives a lot of fun information for you to try lol", 
                  imageUrl: 'https://d.newsweek.com/en/full/851250/keyboard-cat.jpg?w=1600&h=1200&q=88&f=4c3879c4f6f8e6c63ccb215ce2d1e09a'
                ),
              ] 
            )
        )
      );
  }
}