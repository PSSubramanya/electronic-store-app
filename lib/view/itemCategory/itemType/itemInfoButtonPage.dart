import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemInfoButtonsPage extends StatefulWidget {
  @override
  State createState() => new ItemInfoButtonsPageState();
}

class ItemInfoButtonsPageState extends State<ItemInfoButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 40.0, bottom: 50.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3.0,
                        left: 5.0,
                      ),
                      child: Icon(
                        Icons.chevron_left,
                        size: 18.0,
                      ),
                    ),
                    Text(
                      'BACK',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.black,
                          letterSpacing: .4,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: ListTile(
                leading: Text(
                  'Select one',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.black,
                      letterSpacing: .4,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                // trailing: IconButton(
                //     icon: Icon(
                //       Icons.add,
                //       color: Color(0xFFD81B60),
                //       size: 30.0,
                //     ),
                //     onPressed: null),
              ),
            ),
          ),
          SizedBox(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MorningMedicine()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/addtorecord.png",
                          height: 60.0,
                          width: 60.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 35.0),
                          child: Text(
                            'Add a new entry',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                // color: Color(0xFF8C9EFF),
                                color: Colors.red,
                                letterSpacing: .4,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MorningMedicine()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/distribute3.png",
                          height: 60.0,
                          width: 60.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 35.0,
                          ),
                          child: Text(
                            'Distribute item',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                // color: Color(0xFF8C9EFF),
                                color: Colors.red,
                                letterSpacing: .4,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            child: GestureDetector(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MorningMedicine()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10)),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/record2.png",
                          height: 60.0,
                          width: 60.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            left: 35.0,
                          ),
                          child: Text(
                            'Record Book',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                // color: Color(0xFF8C9EFF),
                                color: Colors.red,
                                letterSpacing: .4,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
