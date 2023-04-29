import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
 
Future<String> sendRequest(String imagePath) async {
  final uri = Uri.parse('https://api-inference.huggingface.co/models/yangy50/garbage-classification');
  // final bytes = (await rootBundle.load('assets/images/cats.jpg')).buffer.asUint8List();
  final bytes = File(imagePath).readAsBytesSync();
  final response = await http.post(
    uri,
    headers: {
      'Authorization': 'Bearer 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',
      'Content-Type': 'image/jpeg',
    },
    body: bytes,
  );
  var decodedResponse = jsonDecode(response.body);

return decodedResponse[0]["label"];
}
}