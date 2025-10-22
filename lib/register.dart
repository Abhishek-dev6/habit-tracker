import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habittracker/sign.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                child: Text(
                  "Back",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(width: 130),
              Text(
                "Register",
                style: GoogleFonts.playfairDisplay(
                  textStyle: TextStyle(
                    color: Color(0XFF000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0XFFFFFFFF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        labelText: "Email adress",
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: Color(0XFFC5BBB1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide.none
                        ) ,
                        filled: true,
                        fillColor: Color(0XFFF8F3EE),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return "enter a valid email";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        labelText: "Name",
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: Color(0XFFC5BBB1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none ,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Color(0XFFF8F3EE),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "password",
                        labelStyle: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: Color(0XFFC5BBB1),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        filled: true,
                        fillColor: Color(0XFFF8F3EE),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter the password";
                        }
                        if (value.length < 6) {
                          return "Password must be atleast 6 characters";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 345,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0XFFFF5C00),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => signin()),
                            );
                          }
                        },
                        child: Text(
                          "Register",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            letterSpacing: 0,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
