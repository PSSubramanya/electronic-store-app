import 'package:electronic_store_app/view/customWidgets/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewRegister extends StatefulWidget {
  @override
  State createState() => new ViewRegisterState();
}

class ViewRegisterState extends State<ViewRegister> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Record',
          style: TextStyle(
            // color: Color(0xFF8C9EFF),
            color: Colors.black,
            letterSpacing: .4,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 300.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF2A2727),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 140.0, bottom: 30.0),
                    child: CircleAvatar(
                      // backgroundImage:
                      backgroundImage: AssetImage('assets/images/avtar3.png'),
                      radius: 45.0,
                    ),
                  ),
                  Text(
                    'Username@gmail.com',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        // color: Color(0xFF8C9EFF),
                        color: Colors.white,
                        letterSpacing: .4,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xFF2A2727),
              height: 20.0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Divider(
                  color: Colors.white,
                  height: 1.0,
                ),
              ),
            ),
            SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'ENTRY STATS',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        // color: Color(0xFF8C9EFF),
                        color: Colors.white,
                        letterSpacing: .4,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  color: Color(0xFF2A2727),
                )),
            SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'DISTRIBUTION STATS',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        // color: Color(0xFF8C9EFF),
                        color: Colors.white,
                        letterSpacing: .4,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  color: Color(0xFF2A2727),
                )),
            SizedBox(
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'CURRENT STATS',
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        // color: Color(0xFF8C9EFF),
                        color: Colors.white,
                        letterSpacing: .4,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  color: Color(0xFF2A2727),
                )),
            Container(
              height: 176.0,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF2A2727),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'v 1.0.0',
                  style: TextStyle(
                    // color: Color(0xFF8C9EFF),
                    color: Colors.white,
                    letterSpacing: .4,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(),
    );
  }
}
