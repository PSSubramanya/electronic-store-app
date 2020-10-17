import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ItemCategory extends StatefulWidget {
  @override
  State createState() => new ItemCategoryState();
}

class ItemCategoryState extends State<ItemCategory> {
  Icon tick = new Icon(Icons.check_circle_outline);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.shortestSide * 0.15,
              left: MediaQuery.of(context).size.shortestSide * 0.0,
            ),
            child: ListTile(
              title: Text(
                'ITEM TYPE',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: .4,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  color: Colors.indigoAccent,
                  iconSize: 28.0,
                  onPressed: () {
                    return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            scrollable: true,
                            elevation: 10.0,
                            backgroundColor: Colors.indigoAccent[300],
                            content: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 2.0),
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
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 2.0),
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
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(5.0),
                                            ),
                                            border:
                                                Border.all(color: Colors.grey)),
                                        // color: Colors.blue,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 12.0, left: 10.0),
                                          child: Text(
                                            'Category Name',
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
                                  padding: const EdgeInsets.only(top: 12.0),
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
                                          hintText: 'Enter the item type name',
                                          hintStyle: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                              color: Colors.grey,
                                              letterSpacing: .4,
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.only(
                                              top: 8.0,
                                              bottom: 8.0,
                                              right: 8.0,
                                              left: 15.0),
                                        )),
                                  ),
                                ),
                                IconButton(
                                    // icon: Icon(Icons.check_circle),
                                    icon: tick,
                                    color: Color(0xFF58EE9E),
                                    iconSize: 60.0,
                                    onPressed: () {
                                      setState(() {
                                        tick = Icon(Icons.check_circle);
                                      });
                                    }),
                              ],
                            ),
                          );
                        });
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 55.0),
            child: Container(
              color: Colors.white,
              height: 110.0,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/gadget.png',
                height: 100,
                width: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'No Items Added',
                  style: GoogleFonts.raleway(
                    color: Colors.black,
                    letterSpacing: .4,
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
