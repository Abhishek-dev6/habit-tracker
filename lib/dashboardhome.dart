import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {

  bool ischecked1 = false;
  bool ischecked2 = false;
  bool ischecked3 = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dashboard",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Hello, it's Monday the 8th of April",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
              SizedBox(height: 20),
              Text(
                "Tasks",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0XFFF8F3EE),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get groceries",
                      style: GoogleFonts.playfairDisplay(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    CheckboxListTile(
                      title: Text("Avocado"),
                      value: ischecked1,
                      onChanged: (bool? value) {
                        setState(() {
                          ischecked1 = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Cereal"),
                      value: ischecked2,
                      onChanged: (bool? value) {
                        setState(() {
                          ischecked2 = value!;
                        });
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Quinoa"),
                      value: ischecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          ischecked3 = value!;
                        });
                      },
                    ),
                    Container(
                      width: 124,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFF5C00),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "complete",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 8),
                            Image.asset('assets/images/tick.png', height: 20, width: 19),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Completed tasks",
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                width: double.infinity,
                height: 170,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0XFFF8F3EE),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Complete essay",
                        style: GoogleFonts.playfairDisplay(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit"),
                    SizedBox(height: 10),
                    Container(
                      width: 134,
                      height: 41,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0XFFF0F0F0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Completed"),
                          SizedBox(width: 8),
                          Image.asset('assets/images/hand.png', height: 20, width: 19),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedindex,
      //   onTap: itemtapped,
      //   selectedItemColor: Color(0XFFFF5C00),
      //   unselectedItemColor: Color(0XFFF8F3EE),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: SvgPicture.asset(
      //         'assets/icons/goal_icon.svg',
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
      //         colorFilter: ColorFilter.mode(
      //           _selectedindex == 3 ? Color(0XFFFF5C00) : Color(0XFFF8F3EE),
      //           BlendMode.srcIn,
      //         ),
      //       ),
      //       label: "",
      //     ),
      //   ],
      // ),
    );
  }
}
