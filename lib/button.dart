import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custom_button extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final Color? textcolor;
  final double width;
  final double height;
  final double borderRadius;
  final TextStyle? textStyle;
  const Custom_button({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
    this.borderRadius = 30,
    this.height = 51,
    this.width = 345,
    required this.textcolor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? GoogleFonts.poppins(color: textcolor,fontWeight: FontWeight.w400,fontSize: 14),
          ),
        ),
      ),
    );
  }
}
