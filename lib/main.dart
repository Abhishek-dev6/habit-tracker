import 'package:flutter/material.dart';
import 'package:habittracker/Habittracker.dart';
import 'package:habittracker/dashboard.dart';
import 'package:habittracker/goals.dart';
import 'package:habittracker/register.dart';
import 'package:habittracker/settings.dart';
import 'package:habittracker/sign.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signin(),

    );
  }
}

