import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final List<Widget> tabHeads;
  final List<Widget> tabContents;
  final Widget drawer;
  AppBarCustom({
    this.drawer,
    this.tabHeads,
    this.tabContents,
  });

  @override
  _AppBarCustomState createState() => _AppBarCustomState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => null;

  // @override
  // TODO: implement preferredSize
  // Size get preferredSize => Size(MediaQuery.of(context).size.width, height);
}

class _AppBarCustomState extends State<AppBarCustom> {
  var AppBarColor1 = [Color(0xBBFB9426), Color(0xBBF80D7C)];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.968,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
            //color: Color(0xFF2A2727),
            gradient: LinearGradient(
                colors: AppBarColor1,
                begin: Alignment.topRight,
                end: Alignment.bottomLeft),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: widget.drawer,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                // padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.01,),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: TabBar(
                    tabs: widget.tabHeads,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 1.0,
                    // indicatorWeight: 5.0,
                    // indicatorColor: Color(0xFF2A2727),
                    indicatorColor: Colors.white,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 16,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 24,
                    ),
                    indicatorPadding: EdgeInsets.only(top: 10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSize customAppBar(
  BuildContext context, {
  List<Widget> tabHeads,
  List<Widget> tabContents,
  Widget drawer,
}) {
  return PreferredSize(
    preferredSize: Size(
      MediaQuery.of(context).size.width * 0.968,
      MediaQuery.of(context).size.height * 0.35,
    ),
    child: SafeArea(
      child: ClipPath(
        // clipper: MyClipper(),
        clipper: ClippingClass(),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.968,
          height: MediaQuery.of(context).size.height * 0.34,
          decoration: BoxDecoration(
            // color: Color(0xFF2A2727),
             gradient: LinearGradient(
                              // colors: [Colors.black26, Colors.white],
                              colors: [Colors.black, Colors.blueGrey],
                              // colors: [Colors.blue, Colors.red],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                              // begin: Alignment.topRight,
                              // end: Alignment.bottomLeft),
            //  borderRadius: BorderRadius.only(
            //    bottomLeft: Radius.circular(50),
            //    bottomRight: Radius.circular(50),

            //  ),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: drawer,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TabBar(
                  tabs: tabHeads,
                  indicatorSize: TabBarIndicatorSize.label,
                  // indicatorWeight: 1.0,
                  indicatorWeight: 25.0,
                  // indicatorColor: Color(0xFF2A2727),
                  indicatorColor: Colors.blueGrey[600],
                  // indicatorColor: Colors.white,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 13,
                  ),
                  labelStyle: TextStyle(
                    fontSize: 28,
                  ),
                  indicatorPadding: EdgeInsets.only(top: 10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - 50);
    // path.lineTo(0, size.height - 70);

    var controllPoint = Offset(50, size.height);
    var endPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    
    path.lineTo(size.width, 0);

    // path.quadraticBezierTo(
    //     endPoint.dx, endPoint.dy, controllPoint.dx, controllPoint.dy);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
