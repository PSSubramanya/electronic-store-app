import 'dart:async';

import 'dart:convert';
import 'dart:io';

import 'package:animated_card/animated_card.dart';
import 'package:electronic_store_app/view/authentication/registrationPage.dart';
import 'package:flushbar/flushbar.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:toast/toast.dart';

import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextEditingController _emailLoginTextController = TextEditingController();
  TextEditingController _passwordLoginTextController = TextEditingController();

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => HomePage()));
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => LoginPage()));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegistrationPage(),
      ),
    );
  }

  final formkey = new GlobalKey<FormState>();
  // SharedPreferences _sharedPreferences;

  String _email;
  String _password;

  bool validateAndSave() {
    final form = formkey.currentState;
    if (form.validate()) {
      form.save();

      return true;
    } else {
      return false;
    }
  }

  // void validateAndSubmit() async {
  //   if (validateAndSave()) {
  //     try {
  //       FirebaseUser user = (await FirebaseAuth.instance
  //               .signInWithEmailAndPassword(email: _email, password: _password))
  //           .user;
  //       print('Signing in: ${user.uid}');
  //     } catch (e) {
  //       print('Error: $e');
  //     }
  //   }
  // }

  // void loginWithCreds() async {
  //   if (validateAndSave()) {
  //     try {
  //       FirebaseUser user = (await FirebaseAuth.instance
  //               .signInWithEmailAndPassword(email: _email, password: _password))
  //           .user;

  //       _sharedPreferences = await SharedPreferences.getInstance();

  //       _sharedPreferences.setString("userId", user.uid);
  //       if (user.uid != null) {
  //         print('Signing in: ${user.uid}');
  //         route();
  //       }
  //     } catch (e) {
  //       print('ERROR: $e');
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //   gradient: LinearGradient(
          //       colors: [Colors.orange[200], Colors.deepOrange[300]],
          //       begin: Alignment.topRight,
          //       end: Alignment.bottomLeft),
          // ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Image.asset("assets/images/techbg5.jpg",
                      height: 280.0, width: MediaQuery.of(context).size.width),
                ),
              ),
              // ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.shortestSide * 0.1),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Text(
                      'Login',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                key: formkey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, top: 15.0, right: 40.0, bottom: 5.0),
                      child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailLoginTextController,
                          validator: (value) =>
                              value.isEmpty ? "Email can't be empty" : null,
                          onSaved: (value) => _email = value,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF8C9EFF), width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF8C9EFF), width: 1.0),
                              //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            ),
                            hintText: 'Email',
                            hintStyle: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Color(0xFF8C9EFF),
                                letterSpacing: .4,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 40.0, top: 5.0, right: 40.0, bottom: 5.0),
                      child: TextFormField(
                          validator: (value) =>
                              value.isEmpty ? "Password can't be empty" : null,
                          onSaved: (value) => _password = value,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          controller: _passwordLoginTextController,
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.white,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF8C9EFF), width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF8C9EFF), width: 1.0),
                              //  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                            ),
                            hintText: 'Password',
                            hintStyle: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Color(0xFF8C9EFF),
                                letterSpacing: .4,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.shortestSide * 0.1,
                ),
                child: SizedBox(
                  height: 40.0,
                  width: 200.0,
                  child: FlatButton(
                      color: Color(0xFF8C9EFF),
                      // color: Colors.redAccent,
                      onPressed: () {
                        // loginWithCreds();

                        Flushbar(
                          message: "Logged in successfully!",
                          icon: Icon(
                            Icons.check,
                            size: 28.0,
                            color: Colors.green,
                          ),
                          duration: Duration(seconds: 3),
                          leftBarIndicatorColor: Colors.green,
                        )..show(context);

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => RegistrationPage(),
                        //   ),
                        // );

                        startTime();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text(
                        'Login',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .4,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.shortestSide * 0.02,
                ),
                child: SizedBox(
                  height: 40.0,
                  width: 200.0,
                  child: FlatButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => RegisterPage(),
                        //   ),
                        // );
                      },
                      shape: RoundedRectangleBorder(),
                      child: Text(
                        'SignUp',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .4,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.shortestSide * 0.06,
                    bottom: MediaQuery.of(context).size.shortestSide * 0.3),
                child: Container(
                    width: 200.0,
                    child: Text(
                      "Please register if you haven't registered yet",
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
