import 'package:flutter/material.dart';
import 'info_list_element.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: const Text(
            'Learn How You Can Reduce Your Impact!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Divider(),
      InfoListElement(
          name: "Plastic Waste and Pollution Reduction",
          url: Uri.parse(
              "https://www.canada.ca/en/environment-climate-change/services/managing-reducing-waste/reduce-plastic-waste.html"),
          imageUrl:
              'https://t3.ftcdn.net/jpg/00/99/85/04/360_F_99850466_ngq0kW9J2pw3JN6KHBLHEtxWszVkTYm7.jpg'),
      InfoListElement(
          name: "How Landfills are Damaging",
          url: Uri.parse(
              "https://www.colorado.edu/ecenter/2021/04/15/hidden-damage-landfills"),
          imageUrl:
              'https://media.istockphoto.com/id/845816364/photo/garbage-pile-in-trash-dump-or-landfill-pollution-concept.jpg?s=612x612&w=0&k=20&c=FdBKHTjcwj9orqdO0Y392qXHIa9po9Y1t6VAaCm2oxQ='),
      InfoListElement(
          name: "Improving Recycling",
          url: Uri.parse(
              "https://www.natureconservancy.ca/en/blog/archive/why-recycling-is-important.html"),
          imageUrl:
              'https://media.istockphoto.com/id/1367291255/photo/kraft-paper-cut-of-reuse-reduce-recycle-symbol-and-text-on-green-grass-background.jpg?b=1&s=170667a&w=0&k=20&c=v-DoAWMqQaqe-f-BJZCkkIZaMwoUHGM0sWsVkLNW9vY='),
    ])));
  }
}
