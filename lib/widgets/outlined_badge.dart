import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBadge {
  static Widget outlined(String badgeText) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
      child: Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40), // if you need this
        
        side: const BorderSide(
          color: Color(0xFFEF456F),
          width: 1,
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 3.0, horizontal: 15.0),
        color: Colors.white,
        child: Text(
          badgeText,
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily,
            fontSize: 13.0,
            color: const Color(0xFFEF456F),
          ),
        ),
      ),
    ),
    );
  }
}