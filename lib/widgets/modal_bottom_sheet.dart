import 'package:assignmentintern2/widgets/bottom_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModalBottomSheet {
  static dynamic primaryBottomSheet(BuildContext context) {
    return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), //for the round edges
    enableDrag: true,
    builder: (context) {
        return Container(
            //specify height, so that it does not fill the entire screen
            child: Container(
              height: MediaQuery.of(context).size.height*0.3,
              child: Column(children: [
                SizedBox(height: 10),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100.0),
                      
                    ),
                  )
                ),
                BottomPopup.popupItem("assets/link.png", "Invite"),
                BottomPopup.popupItem("assets/user-add(1).png", "Add Member"),
                BottomPopup.popupItem("assets/user-add.png", "Add Group")
              ])
            ),
            
             //what you want to have inside, I suggest using a column
        );
    },
    context: context,//boolean if something does not display, try that
);
  }
}