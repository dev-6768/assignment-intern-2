import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightedText {
  static Widget richText(String description) {
    return RichText(
      text: TextSpan(
        text: description,
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        children: <TextSpan>[
          TextSpan(text: 'Read More', style: TextStyle(color: Color(0xFFEF456F))),
        ],
      ),
    );
  }
}