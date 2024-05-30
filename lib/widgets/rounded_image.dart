import 'package:flutter/material.dart';

class ImageDisplay {
  static Widget RoundedDisplay(String assetPath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        "assets/weeknd.png",
        width: 148.73,
        height: 97
      ),
    );
  }
}