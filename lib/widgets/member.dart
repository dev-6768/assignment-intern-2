import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Members {
  static Widget homePageMembers(String name, String age, String country, String status) {
    Widget elevatedButtonStatus;

    if(status == "Following") {
      elevatedButtonStatus = ElevatedButton(
        onPressed: () {
          print("Hello World");
        },

        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.grey)
            )
          )
        ),

        child: Text(
          "Following",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily
          ),
        ),
      );
    }

    else{
      elevatedButtonStatus = ElevatedButton(
        onPressed: () {
          print("Hello World");
        },

        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.red)
            )
          )
        ),

        child: Text(
          "Add",
          style: TextStyle(
            fontFamily: GoogleFonts.lato().fontFamily
          ),
        ),
      );
    }

    return ListTile(
      leading: CircleAvatar(
        child: ClipOval(
          child: Image.asset("assets/member.png")
        ),
      ),

      title: Text(
        name,
        style: TextStyle(
          fontFamily: GoogleFonts.lato().fontFamily,
          fontSize: 15.0,
          fontWeight: FontWeight.bold
        ),
      ),

      subtitle: Text(
        "$age, $country",
        style: TextStyle(
          fontFamily: GoogleFonts.lato().fontFamily,
          fontSize: 12.0,
        ),
      ),

      trailing: SizedBox(
        width: 110,
        child: elevatedButtonStatus,  
      ),
      
    
    );
  }
}