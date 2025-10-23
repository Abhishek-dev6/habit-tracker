import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcontainer extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
 
  final String toptext;
  final String bottomtext;
  final TextStyle? textStyle;
  const Customcontainer({
    super.key,
    this.width = 345,
    this.height = 103.79,
    this.borderRadius = 25,
    
    required this.toptext,
    required this.bottomtext,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(0XFFF8F3EE),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              toptext,
              style: GoogleFonts.poppins(
                color: Color(0XFF000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ), Divider(color: Color(0XFFC5BBB1), thickness: 2),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              bottomtext,
              style: GoogleFonts.poppins(
                color: Color(0XFF000000),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          
            
        ],
      ),
    );
  }
}
