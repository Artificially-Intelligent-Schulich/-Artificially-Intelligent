import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoListElement extends StatelessWidget {
  final String name;
  final Uri url;
  final String image;

  const InfoListElement({super.key, required this.name, required this.url, required this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 144,
          height: 144,
          child: 
            InkWell(
              child: Text(name, style: const TextStyle(color: Colors.blue)),
              onTap: () =>_launchUri()
          ),
        ),
        SizedBox(
          width: 144,
          height: 144,
          child: Image.asset('\assets\images\gov_can_zero_waste.png')
        )
      ]
    );
 }

    // Launches the url when tapped.
  Future<void> _launchUri() async {
    if(!await launchUrl(url)) {
      Fluttertoast.showToast(
        msg: "URL could not be loaded.",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.redAccent,
        textColor: Colors.black
        );
    }
  }
}