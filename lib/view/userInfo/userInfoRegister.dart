import 'dart:async';

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:animated_card/animated_card.dart';
import 'package:electronic_store_app/view/homePage.dart';
import 'package:flushbar/flushbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:toast/toast.dart';

class UserInfoEntry extends StatefulWidget {
  @override
  State createState() => new UserInfoEntryState();
}

class UserInfoEntryState extends State<UserInfoEntry> {
  TextEditingController _emailLoginTextController = TextEditingController();
  TextEditingController _passwordLoginTextController = TextEditingController();
  TextEditingController _designation = TextEditingController();

  final formkey = new GlobalKey<FormState>();
  // SharedPreferences _sharedPreferences;

  String _email;
  String _password;

  File _pickedImage;

  Uint8List _bytesImage;
  String base64Image;

  String imagePathName = "";

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

  void _pickImage(BuildContext context) async {
    try {
      final imageSource = await showDialog<ImageSource>(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Select the image source"),
                actions: <Widget>[
                  /*MaterialButton(
                  child: Text("Camera"),
                  onPressed: () => Navigator.pop(context, ImageSource.camera),
                ),*/
                  MaterialButton(
                    child: Text("Gallery"),
                    onPressed: () =>
                        Navigator.pop(context, ImageSource.gallery),
                  )
                ],
              ));

      if (imageSource != null) {
        final file = await ImagePicker.pickImage(source: imageSource);

        List<int> imageBytes = file.readAsBytesSync();
        print(imageBytes);
        base64Image = base64Encode(imageBytes);
        print('string is');
        print(base64Image);
        print("You selected gallery image : " + file.path);

        imagePathName = file.path;

        _bytesImage = Base64Decoder().convert(base64Image);

        if (file != null) {
          setState(() => _pickedImage = file);
        }
      }
    } catch (e) {
      print("The image_pick error is " + e.toString());
      Toast.show("Please select the image properly!", context,
          duration: Toast.LENGTH_LONG);
    }
  }

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
                child: Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Container(
                    child: Image.asset("assets/images/techbg21.jpg",
                        height: 180.0,
                        width: MediaQuery.of(context).size.width * 0.8),
                  ),
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
                      'Enter Info',
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
                            hintText: 'Name',
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
                            hintText: 'ITI Branch Name',
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
                            hintText: 'Designation',
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
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     'Image (Not compulsory)',
                    //     style: GoogleFonts.lato(
                    //       textStyle: TextStyle(
                    //         color: Color(0xFF8C9EFF),
                    //         letterSpacing: .4,
                    //         fontSize: 13.0,
                    //         fontWeight: FontWeight.w400,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 100.0, top: 5.0, right: 100.0, bottom: 5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            // color: const Color(0xff7c94b6),
                            color: Colors.white,
                            border: Border.all(
                              // color: Colors.black,
                              color: Color(0xFF8C9EFF),
                              // width: 8,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          height: 150,
                          // color: Colors.white,
                          child: _pickedImage != null
                              ? Image(image: FileImage(_pickedImage))
                              : Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 16.0, top: 40.0),
                                      child: Center(
                                        child: IconButton(
                                            // color: Colors.red,
                                            icon: Icon(
                                              Icons.add_photo_alternate,
                                              size: 50.0,
                                              color: Color(0xFF8C9EFF),
                                            ),
                                            onPressed: () {
                                              _pickImage(context);
                                            }),
                                      ),
                                    ),
                                  ],
                                ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: Text(
                          'Image (Not compulsory)',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Color(0xFF8C9EFF),
                              letterSpacing: .4,
                              fontSize: 13.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )
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
                          message: "New user successfully registered!",
                          icon: Icon(
                            Icons.check,
                            size: 28.0,
                            color: Colors.green,
                          ),
                          duration: Duration(seconds: 3),
                          leftBarIndicatorColor: Colors.green,
                        )..show(context);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide(color: Colors.white)),
                      child: Text(
                        'Save',
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
                  // child: FlatButton(
                  //     onPressed: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => HomePage(),
                  //         ),
                  //       );
                  //     },
                  //     shape: RoundedRectangleBorder(),
                  //     child: Text(
                  //       'Login',
                  //       textAlign: TextAlign.center,
                  //       style: GoogleFonts.lato(
                  //         textStyle: TextStyle(
                  //           color: Colors.black,
                  //           letterSpacing: .4,
                  //           fontSize: 14.0,
                  //           fontWeight: FontWeight.w600,
                  //         ),
                  //       ),
                  //     )),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(
              //       top: MediaQuery.of(context).size.shortestSide * 0.06,
              //       bottom: MediaQuery.of(context).size.shortestSide * 0.3),
              //   child: Container(
              //       width: 200.0,
              //       child: Text(
              //         "Already have an account? Then Login",
              //         style: GoogleFonts.lato(
              //           textStyle: TextStyle(
              //             color: Colors.black,
              //             letterSpacing: .4,
              //             fontSize: 14.0,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //         textAlign: TextAlign.center,
              //       )),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
