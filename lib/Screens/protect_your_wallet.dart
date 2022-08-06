import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:personal_voilet/Widegt/dash_bord.dart';
import 'package:sizer/sizer.dart';

import 'Home_screen.dart';

class ProtectYourWallet extends StatefulWidget {
  const ProtectYourWallet({Key? key}) : super(key: key);

  @override
  _ProtectYourWalletState createState() => _ProtectYourWalletState();
}

class _ProtectYourWalletState extends State<ProtectYourWallet> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.h),
                  height: 6.h,
                  width: 100.w,
                  // color: Colors.yellow,
                  child: Image.asset("assets/process.png", fit: BoxFit.fill,),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: Text("Confirm Seed Phrase", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: Color(0xffFFD505)),)),
              ],
            ),
          ),
          Container(
            height: 100.h,
            width: 100.w,
            color: Colors.black54,
          ),
          BackdropFilter(
            filter:  ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(top: 58.h),
                // margin: EdgeInsets.symmetric(vertical: 10.h),
                height: 0.7.h,
                width: 12.w,
                decoration: BoxDecoration(
                  color: Color(0xff8FA2B7),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.3.h),
                height: 30.1.h,
                width: 100.w,
                decoration: BoxDecoration(
                  // border: Border(
                  //   top: BorderSide(width: 1, color: Colors.black),
                  //   left: BorderSide(width: 1, color: Colors.black),
                  //   right: BorderSide(width: 1, color: Colors.black),
                  // ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12),
                  ),
                  color: Color(0xffF3F5F7),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.sp),
                      child: Text("Protect Your Wallet",
                        style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black)),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
                        child: Text("Dont’t risk losing your funds. Protect your wallet by saving your seed phrase in a place you trust.",
                            style: GoogleFonts.archivo(textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, height: 1.1.sp, color: Color(0xff50657C)),)
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 25.sp),
                        child: Text("It’s the only way to recover your wallet if you get locked out of the app or get a new device.",
                            style: GoogleFonts.archivo(textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, height: 1.1.sp, color: Color(0xff50657C)),)
                        )
                    ),
                  ],
                ),
              ),
            ],)
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child:  Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),),);
                },
                child: BpttomButton(btn_text: "Start",),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

