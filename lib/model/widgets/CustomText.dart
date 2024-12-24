import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.fontWeight, required this.fontSize});

  final String text;
  final FontWeight fontWeight;
  final int fontSize ;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      // use google fonts
      overflow:TextOverflow.ellipsis ,
      style: GoogleFonts.geo(
        fontWeight: fontWeight,
      fontSize: fontSize.toDouble(),
      color: const Color(0xFF2E2E2E),),
      maxLines: 1,

    );
  }
}
