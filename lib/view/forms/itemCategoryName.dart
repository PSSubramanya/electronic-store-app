import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ItemCategoryName extends StatefulWidget {
  @override
  State createState() => new ItemCategoryNameState();
}

class ItemCategoryNameState extends State<ItemCategoryName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 2.0, top: 50.0),
                    child: Text(
                      'FILL THE FORM',
                      style: GoogleFonts.raleway(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 2.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Category Name',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // height: 65,
                  // width: 280,
                  // color: Colors.yellow,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        // left: 5.0,
                        top: 4.0,
                        // right: 20.0,
                        bottom: 15.0),
                    child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            border: Border.all(color: Colors.grey)),
                        // color: Colors.blue,
                        child: Padding(
                          padding: EdgeInsets.only(top: 12.0, left: 10.0),
                          child: Text(
                            'Gadgets',
                            style: GoogleFonts.lato(
                              textStyle: TextStyle(
                                color: Colors.grey,
                                letterSpacing: .4,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0, left: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Item Type Name',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    height: 75,
                    // color: Colors.red,
                    child: TextFormField(
                        // controller: med_name,
                        // validator: (value) =>
                        //     value.isEmpty ? "Enter medicine name" : null,
                        // onSaved: (value) => medicine_name = value,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.grey,
                            letterSpacing: .4,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),

                                // color: Color(0xFF87E4DB),
                                color: Colors.grey,
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                // color: Color(0xFF87E4DB),
                                color: Colors.grey,
                                width: 1.0),
                          ),
                          hintText: 'Laptop',
                          hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, left: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Item Name',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    height: 75,
                    // color: Colors.red,
                    child: TextFormField(
                        // controller: med_name,
                        // validator: (value) =>
                        //     value.isEmpty ? "Enter medicine name" : null,
                        // onSaved: (value) => medicine_name = value,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .4,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.5),
                          ),
                          hintText: 'Enter the item name',
                          hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, left: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Quantity Received',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    height: 75,
                    // color: Colors.red,
                    child: TextFormField(
                        // controller: med_name,
                        // validator: (value) =>
                        //     value.isEmpty ? "Enter medicine name" : null,
                        // onSaved: (value) => medicine_name = value,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .4,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.5),
                          ),
                          hintText: 'Enter the quantity',
                          hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0, left: 3.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Date',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    height: 75,
                    // color: Colors.red,
                    child: TextFormField(
                        // controller: med_name,
                        // validator: (value) =>
                        //     value.isEmpty ? "Enter medicine name" : null,
                        // onSaved: (value) => medicine_name = value,
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.black,
                            letterSpacing: .4,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                // color: Color(0xFF58EE9E),
                                color: Color(0xFF87E4DB),
                                width: 1.5),
                          ),
                          hintText: 'Select the Date',
                          hintStyle: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.grey,
                              letterSpacing: .4,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(
                              top: 8.0, bottom: 8.0, right: 8.0, left: 15.0),
                        )),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.check_circle_outline),
                    color: Color(0xFF58EE9E),
                    iconSize: 60.0,
                    onPressed: () {
                      // setState(() {
                      //   tick = Icon(Icons.check_circle);
                      // });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
