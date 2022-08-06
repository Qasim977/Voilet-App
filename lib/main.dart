import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import 'Screens/password_screen.dart';
import 'Screens/splashscreen.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
              theme: ThemeData(
              textTheme: GoogleFonts.archivoTextTheme(
              Theme.of(context).textTheme,),),
            home: SplashScreen(),
          );
        }
    );
  }
}

