import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget displayImage(imageFile) {
  if (imageFile != null) {
    return Image.network(imageFile.path, fit: BoxFit.cover);
  } else {
    return Image.asset('assets/test.png');
  }
}