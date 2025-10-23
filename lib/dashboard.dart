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
      ),
    );
  }
}
