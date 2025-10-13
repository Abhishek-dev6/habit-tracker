import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:habittracker/Habittracker.dart';
import 'package:habittracker/dashboard.dart';
import 'package:habittracker/register.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign in",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
                color: const Color(0xFF000000),
              ),
            ),
            SizedBox(height: 20),
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
                        labelStyle: TextStyle(color: Color(0XFFC5BBB1)),
                        filled: true,
                        fillColor: Color(0XFFF8F3EE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Field cannot be empty";
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return "Enter a valid mail";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        filled: true,
                        fillColor: Color(0XFFF8F3EE),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter the password";
                        }
                        if (value.length < 6) {
                          return "password atleast 6 characters";
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  // SizedBox(
                  //   width: 400,
                  //   height: 51,
                  //   child: ElevatedButton(
                  //     onPressed: () {

                  //     },
                  //     child: Text(
                  //       "Sign in",
                  //       style: TextStyle(fontSize: 14, color: Color(0XFFFFFFFF)),
                  //     ),
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Color(0XFFFF5C00),
                  //     ),
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },
                    child: Container(
                      width: 345,
                      height: 51,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0XFFFF5C00),
                      ),
                      child: Center(
                        child: Text(
                          "Sign in",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forgot password?",
                style: TextStyle(
                  color: Color(0XFFFF5C00),
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0XFFFF5C00),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Don't Have an account?", style: TextStyle(fontSize: 14)),
            SizedBox(height: 20),
            // SizedBox(
            //   width: 400,
            //   height: 51,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Color(0XFFF0F0F0),
            //     ),
            //     child: Text("Register"),
            //   ),
            // ),
            Container(
              width: 345,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0XFFF0F0F0),
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(color: Color(0XFF000000)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
