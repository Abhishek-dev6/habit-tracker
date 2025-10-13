import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Habit extends StatefulWidget {
  const Habit({super.key});

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  bool switch1 = false;
  bool switch2=true;
  bool switch3=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Habit tracker",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  letterSpacing: 0,
                  color: Color(0XFF000000),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Keep a track of your habits",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  letterSpacing: 0,
                  color: Color(0XFF000000),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 196,
                      width: 196,
                      child: CircularProgressIndicator(
                        backgroundColor: Color(0XFFF0F0F0),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Color(0XFFFF5C00),
                        ),
                        strokeWidth: 10,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "89%",
                          style: GoogleFonts.playfairDisplay(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0XFF000000),
                          ),
                        ),
                        Text(
                          "         of tasks \n completed weekly",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: Color(0XFF000000),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Tracker Settings",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 0,
                  color: Color(0XFF000000),
                ),
              ),SizedBox(height: 10),
             Container(
                width: 345,
                 height: 180,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(25),
                   color: Color(0XFFF8F3EE),
                 ),
                 child: Column(
                   children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                              "Track daily",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0,
                                color: Color(0XFF000000),
                              ),
                            ), 
                            Switch(
                              activeColor: Color(0XFFFF5C00),
                              inactiveThumbColor: Color(0XFFFF5C00),
                              value: switch1,
                              onChanged: (bool value) {
                                setState(() {
                                  switch1 = value;
                                });
                              },
                            ),
                      ],
                     ),
                     Divider(
                      color: Color(0XFFC5BBB1),
                      thickness: 2,
      
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                              "Track Weekly",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0,
                                color: Color(0XFF000000),
                              ),
                            ), 
                            Switch(
                              activeColor: Color(0XFFFF5C00),
                              inactiveThumbColor: Color(0XFFFF5C00),
                              value: switch2,
                              onChanged: (bool value) {
                                setState(() {
                                  switch2 = value;
                                });
                              },
                            ),
                      ],
                     ),
                     Divider(
                      color: Color(0XFFC5BBB1),
                      thickness: 2,
                     ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                              "Track monthly",
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 0,
                                color: Color(0XFF000000),
                              ),
                            ), 
                            Switch(
                              activeColor: Color(0XFFFF5C00),
                              inactiveThumbColor: Color(0XFFFF5C00),
                              value: switch3,
                              onChanged: (bool value) {
                                setState(() {
                                  switch3 = value;
                                });
                              },
                            ),
                      ],
                     ),
      
                   ],
                 ),
             
             )
            ],
          ),
        ),
      ),
    );
  }
}
