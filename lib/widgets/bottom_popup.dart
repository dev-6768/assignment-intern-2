import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomPopup {
  static Widget popupItem(String asset, String name) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white.withOpacity(0.11),
        backgroundImage: Image.asset(asset).image,
      ),

      title: Text(
        name,
        style: TextStyle(
          fontFamily: GoogleFonts.lato().fontFamily,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      )
    );
  }
}