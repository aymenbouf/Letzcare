import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


const primaryColor = Colors.deepPurpleAccent;
TextStyle primaryWhiteText = GoogleFonts.comfortaa(color: Colors.white);
TextStyle primaryDarkText = GoogleFonts.comfortaa(color: Colors.black);
TextStyle primaryGreyText = GoogleFonts.comfortaa(color: Colors.grey);
TextStyle primaryColoredText = GoogleFonts.comfortaa(color: primaryColor);
TextStyle smallDarkBoldText = GoogleFonts.comfortaa(color: Colors.black,fontWeight: FontWeight.bold);
TextStyle primaryDarkBoldText = GoogleFonts.comfortaa(color: Colors.black.withOpacity(.5),fontSize: 15,fontWeight: FontWeight.bold);
BoxDecoration whiteBoxGreyShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [
      BoxShadow(
          color: Colors.grey.withOpacity(.4),
          blurRadius: 6,
          offset: const Offset(0,0)
      )
    ]);

