import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcontainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final Color color;
  final String text;
  final TextStyle?textStyle;
  const Customcontainer({
    super.key,
    this.width=345,
    this.height=103.79,
    this.borderRadius=25,
    required this.color,
    required this.text,
    this.textStyle
    
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
      child: Text(text,style: GoogleFonts.poppins(color: Color(0XFF000000),fontSize: 14),),
    );
  }
}
