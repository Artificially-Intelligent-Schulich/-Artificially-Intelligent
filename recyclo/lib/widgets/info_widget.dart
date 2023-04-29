import 'package:flutter/material.dart';
import 'info_list_element.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Text("Links Go Here"),
            InfoListElement(
              name: "Government of Canada Zero Waste", 
              url: Uri.parse("https://www.canada.ca/en/environment-climate-change/services/managing-reducing-waste/reduce-plastic-waste.html"),
              image: '\\assets\\images\\gov_can_zero_waste.png'
            ),
            InfoListElement(
              name: "Rick Astley", 
              url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
              image: "/assets/images/shield.png"
            ),
            InfoListElement(
              name: "Rick Astley", 
              url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
              image: '/assets/images/shield.png'
            ),
            InfoListElement(
              name: "Rick Astley", 
              url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
              image: '/assets/images/shield.png'
            ),
            InfoListElement(
              name: "Rick Astley", 
              url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
              image: '/assets/images/shield.png'
            ),
            InfoListElement(
              name: "Rick Astley", 
              url: Uri.parse("https://youtu.be/dQw4w9WgXcQ"),
              image: '/assets/images/shield.png'
            ),
          ] 
        )
      )
    );
  }
}