import 'package:flutter/material.dart';
import 'package:freelance/utils/constant/Colors.dart';
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
      overflow:TextOverflow.ellipsis ,
      style: GoogleFonts.notoSansGeorgian(
        fontWeight: fontWeight,
      fontSize: fontSize.toDouble(),
      color: AppColors.black,
      ),
      maxLines: 1,
    );
  }
}
