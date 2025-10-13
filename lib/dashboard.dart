import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habittracker/Habittracker.dart';
import 'package:habittracker/dashboardhome.dart';
import 'package:habittracker/goals.dart';
import 'package:habittracker/settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedindex = 0;
  final List<Widget> _pages=[goal(),dash(),Habit(),Settings()];
  void itemtapped(int index) {
    setState(() {
      _selectedindex = index;
    });
    
  }

  bool ischecked1 = false;
  bool ischecked2 = false;
  bool ischecked3 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: IndexedStack(
          index: _selectedindex,
         children:_pages
         ),
         bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedindex,
          
          onTap: itemtapped,
          selectedItemColor: Color(0XFFFF5C00),
          unselectedItemColor: Color.fromARGB(255, 19, 18, 18),

          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/goal_icon.svg',
                width: 12.86,
                height: 18.57,
                colorFilter: ColorFilter.mode(
                  _selectedindex == 0 ? Color(0XFFFF5C00) : Color.fromARGB(255, 19, 18, 18),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/home_icon.svg',
                width: 20,
                height: 20,
                colorFilter: ColorFilter.mode(
                  _selectedindex == 1 ? Color(0XFFFF5C00) : Color.fromARGB(255, 19, 18, 16),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/habit_icon.svg',
                width: 16.92,
                height: 20,
                colorFilter: ColorFilter.mode(
                  _selectedindex == 2 ? Color(0XFFFF5C00) : Color.fromARGB(255, 18, 17, 15),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/vector_icon.svg',
                width: 16.92,
                height: 20,
                colorFilter: ColorFilter.mode(
                  _selectedindex == 3 ? Color(0XFFFF5C00) : Color.fromARGB(255, 19, 18, 16),
                  BlendMode.srcIn,
                ),
              ),
              label: "",
            ),
          ],
        ),
        
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Text(
        //           "Dashboard",
        //           style: GoogleFonts.playfairDisplay(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 36,
        //             letterSpacing: 0,
        //             color: Color(0XFF000000),
        //           ),
        //         ),
        //         SizedBox(height: 10),
        //         Text(
        //           "Hello,its Monday the 8th of April ",
        //           style: GoogleFonts.poppins(
        //             fontWeight: FontWeight.w400,
        //             fontSize: 14,
        //             letterSpacing: 0,
        //             color: Color(0XFF000000),
        //           ),
        //         ),
        //         SizedBox(height: 20),
        //         Text(
        //           "Tasks",
        //           style: GoogleFonts.playfairDisplay(
        //             fontWeight: FontWeight.bold,
        //             fontSize: 20,
        //             letterSpacing: 0,
        //             color: Color(0XFF000000),
        //           ),
        //         ),
        //         SizedBox(height: 10),
        //         Container(
        //           padding: EdgeInsets.all(15),
        //           // width: 345,
        //           // height: 221,
        //           width: double.infinity,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(25),
        //             color: Color(0XFFF8F3EE),
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,

        //             children: [
        //               Text(
        //                 "Get groceries",
        //                 style: GoogleFonts.playfairDisplay(
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 20,
        //                   letterSpacing: 0,
        //                   color: Color(0XFF000000),
        //                 ),
        //               ),
        //               SingleChildScrollView(
        //                 child: Column(
        //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                   children: [
        //                     CheckboxListTile(
        //                       title: Text(
        //                         "Avacado",
        //                         style: GoogleFonts.poppins(
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                           letterSpacing: 0,
        //                           color: Color(0XFF000000),
        //                         ),
        //                       ),
        //                       value: ischecked1,
        //                       onChanged: (bool? value) {
        //                         setState(() {
        //                           ischecked1 = value!;
        //                         });
        //                       },
        //                     ),
                            
        //                     CheckboxListTile(
        //                       title: Text(
        //                         "Cereal",
        //                         style: GoogleFonts.poppins(
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                           letterSpacing: 0,
        //                           color: Color(0XFF000000),
        //                         ),
        //                       ),
        //                       value: ischecked2,
        //                       onChanged: (bool? value) {
        //                         setState(() {
        //                           ischecked2 = value!;
        //                         });
        //                       },
        //                     ),
                           
        //                     CheckboxListTile(
        //                       title: Text(
        //                         "Quinoa",
        //                         style: GoogleFonts.poppins(
        //                           fontWeight: FontWeight.w400,
        //                           fontSize: 14,
        //                           letterSpacing: 0,
        //                           color: Color(0XFF000000),
        //                         ),
        //                       ),
        //                       value: ischecked3,
        //                       onChanged: (bool? value) {
        //                         setState(() {
        //                           ischecked3 = value!;
        //                         });
        //                       },
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //               Container(
        //                 width: 124,
        //                 height: 41,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(15),
        //                   color: Color(0xFFFF5C00),
        //                 ),
        //                 child: Center(
        //                   child: Row(
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Text(
        //                           "complete",
        //                           style: GoogleFonts.poppins(
        //                             fontWeight: FontWeight.w400,
        //                             fontSize: 14,
        //                             color: Color(0XFFFFFFFF),
        //                           ),
        //                         ),
        //                       ),

        //                       Image.asset(
        //                         'assets/images/tick.png',
        //                         height: 20,
        //                         width: 19,
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         SizedBox(height: 20),
        //         Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Text(
        //             "Completed tasks",
        //             style: GoogleFonts.playfairDisplay(
        //               fontWeight: FontWeight.bold,
        //               fontSize: 20,
        //               letterSpacing: 0,
        //             ),
        //           ),
        //         ),
        //         Container(
        //           width: 345,
        //           height: 170,
                 
        //           padding: EdgeInsets.all(15),
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(25),
        //             color: Color(0XFFF8F3EE),
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Row(
        //                 children: [
        //                   Text(
        //                     "Complete essay",
        //                     style: GoogleFonts.playfairDisplay(
        //                       fontWeight: FontWeight.bold,
        //                       fontSize: 20,
        //                       letterSpacing: 0,
        //                       color: Color(0xFF000000),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //               SizedBox(height: 10),
        //               Text(
        //                 "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
        //                 style: GoogleFonts.poppins(
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 14,
        //                   letterSpacing: 0,
        //                   color: Color(0XFF000000),
        //                 ),
        //               ),
        //               SizedBox(height: 10),
        //               Container(
        //                 width: 134,
        //                 height: 41,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(15),
        //                   color: Color(0XFFF0F0F0),
        //                 ),
        //                 child: Row(
        //                   children: [
        //                     Text(
        //                       "Completed",
        //                       style: GoogleFonts.poppins(
        //                         fontWeight: FontWeight.w400,
        //                         fontSize: 14,
        //                         letterSpacing: 0,
        //                         color: Color(0XFF000000),
        //                       ),
        //                     ),
        //                     Image.asset(
        //                       'assets/images/hand.png',
        //                       height: 20,
        //                       width: 19,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _selectedindex,
          
        //   onTap: itemtapped,
        //   selectedItemColor: Color(0XFFFF5C00),
        //   unselectedItemColor: Color(0XFFF8F3EE),

        //   items: [
        //     BottomNavigationBarItem(
        //       icon: SvgPicture.asset(
        //         'assets/icons/goal_icon.svg',
        //         width: 12.86,
        //         height: 18.57,
        //         colorFilter: ColorFilter.mode(
        //           _selectedindex == 0 ? Color(0XFFFF5C00) : Color(0XFFF8F3EE),
        //           BlendMode.srcIn,
        //         ),
        //       ),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: SvgPicture.asset(
        //         'assets/icons/home_icon.svg',
        //         width: 20,
        //         height: 20,
        //         colorFilter: ColorFilter.mode(
        //           _selectedindex == 1 ? Color(0XFFFF5C00) : Color(0XFFF8F3EE),
        //           BlendMode.srcIn,
        //         ),
        //       ),
        //       label: "",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: SvgPicture.asset(
        //         'assets/icons/habit_icon.svg',
        //         width: 16.92,
        //         height: 20,
        //         colorFilter: ColorFilter.mode(
        //           _selectedindex == 2 ? Color(0XFFFF5C00) : Color(0XFFF8F3EE),
        //           BlendMode.srcIn,
        //         ),
        //       ),
        //       label: "",
        //     ),

        //     BottomNavigationBarItem(
        //       icon: SvgPicture.asset(
        //         'assets/icons/vector_icon.svg',
        //         width: 16.92,
        //         height: 20,
        //         colorFilter: ColorFilter.mode(
        //           _selectedindex == 3 ? Color(0XFFFF5C00) : Color(0XFFF8F3EE),
        //           BlendMode.srcIn,
        //         ),
        //       ),
        //       label: "",
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
