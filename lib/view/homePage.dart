// import 'package:electronic_store_app/view/loginPage.dart';
import 'package:electronic_store_app/view/authentication/loginPage.dart';
import 'package:electronic_store_app/view/forms/itemCategory.dart';
import 'package:electronic_store_app/view/itemCategory/itemType/itemInfoButtonPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 0.0, top: 40.0, bottom: 50.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Image.asset(
                          "assets/images/tech3.png",
                          height: 40.0,
                          width: 40.0,
                        ),
                        title: Text(
                          'Electronic Record',
                          style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: .4,
                              // fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        trailing: SizedBox(
                          height: 40.0,
                          width: 35.0,
                          child: IconButton(
                              icon: Icon(Feather.info),
                              iconSize: 24.0,
                              color: Colors.indigoAccent,
                              onPressed: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => AppInfo(),
                                //     ));
                              }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0.0, bottom: 20.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: ListTile(
                  leading: Text(
                    'EQUIPMENT LIST',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        letterSpacing: .4,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
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

            //FROM HERE...
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ItemCategory()));
                      },
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                "assets/images/laptop2.png",
                                height: 60.0,
                                width: 60.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Gadgets',
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
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AfternoonMedicine()));
                      },
                      child: Card(
                        elevation: 8.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/tech4.png",
                              height: 60.0,
                              width: 60.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Equipments',
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => EveningMedicine()));
                      },
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                // "assets/images/tech3.png",
                                // "assets/images/tech6.png",
                                "assets/images/firstaidkit.png",
                                height: 60.0,
                                width: 60.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Medical Kit',
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
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => NightMedicine()));
                      },
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              "assets/images/techbook.png",
                              height: 60.0,
                              width: 60.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Stationary',
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
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => EveningMedicine()));
                      },
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                // "assets/images/tech3.png",
                                // "assets/images/tech6.png",
                                "assets/images/tech6.png",
                                height: 60.0,
                                width: 60.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Components',
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
                  SizedBox(
                    height: 160.0,
                    width: 165.0,
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => EveningMedicine()));
                      },
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                // "assets/images/tech3.png",
                                // "assets/images/tech6.png",
                                "assets/images/techother2.png",

                                // "assets/images/techother.png",
                                height: 60.0,
                                width: 60.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Others',
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
                ],
              ),
            ),

            //TILL HERE...

            //ADD BUTTON
            Padding(
              padding: const EdgeInsets.only(
                  top: 30.0, left: 85.0, right: 85.0, bottom: 10.0),
              child: SizedBox(
                height: 53.0,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      // Navigator.pushReplacementNamed(context, '/loginpage');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemInfoButtonsPage(),
                          ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(color: Colors.white)),
                    child: Text(
                      'ADD MORE',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Colors.red,
                          letterSpacing: .4,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
