import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class goal extends StatefulWidget {
  const goal({super.key});

  @override
  State<goal> createState() => _goalState();
}

class _goalState extends State<goal> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Goals",
              style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                letterSpacing: 0,
                color: Color(0XFF000000),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Goals and milestones",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0XFF000000),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 345,
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0XFFF8F3EE),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Run a marathon",
                        style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 0,
                          color: Color(0XFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur \n adipiscing elit",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 0,
                          color: Color(0XFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 155,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0XFFFF5C00),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Accomplished",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0XFFFFFFFF),
                                ),
                              ),
                              Image.asset('assets/images/cup.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 345,
              height: 149,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color(0XFFF8F3EE),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Read 10 books",
                        style: GoogleFonts.playfairDisplay(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 0,
                          color: Color(0XFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          letterSpacing: 0,
                          color: Color(0XFF000000),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 155,
                        height: 41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0XFFFF5C00),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Accomplished",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0XFFFFFFFF),
                                ),
                              ),
                              Image.asset('assets/images/cup.jpg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Accomplished goals",
              style: GoogleFonts.playfairDisplay(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 0,
                color: Color(0XFF000000),
              ),
            ),SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text("See your accomplished goals here",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffffffff)),)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
