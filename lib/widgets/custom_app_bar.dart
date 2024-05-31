import 'package:assignmentintern2/widgets/modal_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar {
  static Widget AnimatedAppBar(BuildContext context, double heightAppBar) {
    return AnimatedContainer(
        height: heightAppBar,
        duration: const Duration(milliseconds: 200),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: SafeArea(
            child: customAppBar(context, 'assets/weeknd.png', "The weeknd", "Community • +11K Members", heightAppBar: heightAppBar, expandedContent: true),
          ),
        ),
        
      );
  }

  static Widget simpleAppBar(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SafeArea(
            child: customAppBar(context, 'assets/weeknd.png', "The weeknd", "Community • +11K Members"),
          ),
        );
  }

  static Widget customAppBar(BuildContext context, String assetName, String name, String type, {double heightAppBar = 56.0, bool expandedContent = false} ) {
    Widget columnWidget;
    if(expandedContent) {
      columnWidget = Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Text(
                name,
                style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            ),
        
            Expanded(
              child: Text(
                type,
                style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontSize: 12.0,
                  color: Colors.white
                )
              )
            ),
          ],
        ),
      );
    }

    else {
      columnWidget = Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
              name,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.white
              )
            ),
      
          
            Text(
              type,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontSize: 12.0,
                color: Colors.white
              )
            )
          
        ],
      );
    }

    return Container(
      height: heightAppBar,
      decoration: const BoxDecoration(
        color: Color(0xFFC32422),
      ),

      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SizedBox(width: 5),
            InkWell(
              onTap: () {
                
              },

              child: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.black.withOpacity(0.5),
                  backgroundImage: Image.asset(
                      "assets/arrow-left.png",
                      fit: BoxFit.fill,
                  ).image,
                ),
            ),
            
            const SizedBox(width: 5),

            ClipOval(
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: Image.asset(
                    assetName,
                    fit: BoxFit.fill,
                ).image,
              ),
            ),

            const SizedBox(width: 10),
            const SizedBox(height: 6),

            columnWidget,

            Expanded(child: Container()),

            FloatingActionButton(
              elevation: 0.0,
              backgroundColor: const Color(0xFFC32422),
              onPressed: () {
                ModalBottomSheet.primaryBottomSheet(context);
              },
              child: Image.asset("assets/more.png")
            ),

        ]
      ),
    );
  }
}