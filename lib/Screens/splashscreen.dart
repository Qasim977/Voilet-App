import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Start Up Screen/diversity.dart';
import 'Start Up Screen/securty_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(milliseconds: 3000),(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> DiversityScreen(),));}
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // height: MediaQuery.of(context).size.height*0.19,
          // width: MediaQuery.of(context).size.width*0.4,
          child: Text("DCY", style: GoogleFonts.lato(textStyle: TextStyle(color: Color(0xffFFD505), fontSize: 36.sp, fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}
