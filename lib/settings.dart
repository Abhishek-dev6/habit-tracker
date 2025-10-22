import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habittracker/button.dart';
import 'package:habittracker/sign.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switch4 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Notification Settings",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0XFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Container(
                      width: 345,
                      height: 55,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0XFFF8F3EE),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notifications",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0XFF000000),
                            ),
                          ),
                          Switch(
                            activeColor: Color(0XFFFF5C00),
                            value: switch4,
                            onChanged: (bool value) {
                              setState(() {
                                switch4 = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0XFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Container(
                    //   width: 345,
                    //   height: 103.79,
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(25),
                    //     color: Color(0XFFF8F3EE),
                    //   ),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: 
                    //         Row(
                    //           children: [
                    //             Text(
                    //               "Terms of service",
                    //               style: GoogleFonts.poppins(
                    //                 fontWeight: FontWeight.w400,
                    //                 fontSize: 14,
                    //                 color: Color(0XFF000000),
                    //               ),
                    //             ),
                                
                    //           ],
                    //         ),
                    //       ),

                    //       Divider(color: Color(0XFFC5BBB1), thickness: 2),

                    //       Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Row(
                    //           children: [
                    //             Text(
                    //               "Privacy policy",
                    //               style: GoogleFonts.poppins(
                    //                 fontWeight: FontWeight.w400,
                    //                 fontSize: 14,
                    //                 color: Color(0XFF000000),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Feedback and Support",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0XFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 345,
                      height: 103.79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0XFFF8F3EE),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Rate Our app",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0XFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Divider(color: Color(0XFFC5BBB1), thickness: 2),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "FAQs",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0XFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Account management",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0XFF000000),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 345,
                      height: 103.79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0XFFF8F3EE),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Email adress & password",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0XFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Divider(color: Color(0XFFC5BBB1), thickness: 2),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Deactivate account",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0XFF000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => signin()),
                        );
                      },
                      //   child: Container(
                      //     width: 345,
                      //     height: 51,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(30),
                      //       color: Color(0XFFF0F0F0),
                      //     ),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Text(
                      //           "Logout",
                      //           style: GoogleFonts.poppins(
                      //             fontWeight: FontWeight.w400,
                      //             fontSize: 14,
                      //             color: Color(0XFF000000),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      child: Custom_button(
                        
                        text: "Logout",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signin()),
                          );
                        },
                        color: Color(0XFFF0F0F0),
                        textcolor: Color(0XFF000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
