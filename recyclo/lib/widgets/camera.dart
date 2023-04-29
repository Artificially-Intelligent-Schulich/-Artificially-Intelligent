import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recyclo/services/api_service.dart';
import 'package:recyclo/models/stored_items.dart';

class Camera extends StatefulWidget {
  const Camera({Key? key}) : super(key: key);

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _image = null;
  final ImagePicker _imagePicker = ImagePicker();
  StoredItems myItems = StoredItems();

  Future<void> getImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      final category = await ApiService().sendRequest(image.path);
      myItems.addProduct('test', category);
      print(category);
      print(myItems.items);
    }

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _image == null
            ? const Text("No Image to be displayed")
            : Image.file(_image!),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: const Icon(Icons.add_a_photo),
      ),
    );
  }
}
