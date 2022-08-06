import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'protect_your_wallet.dart';

class What_is_seed extends StatefulWidget {
  const What_is_seed({Key? key}) : super(key: key);

  @override
  _What_is_seedState createState() => _What_is_seedState();
}

class _What_is_seedState extends State<What_is_seed> {
  // bool? value = false;
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.h),
                  height: 6.h,
                  width: 100.w,
                  // color: Colors.yellow,
                  child: Image.asset("assets/process.png", fit: BoxFit.fill,),
                ),
                Container(
                  // margin: EdgeInsets.only(bottom: 15.h),
                  // color: Colors.red,
                  height: 35.h,
                  width: 60.w,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 2.h,
                          width: 4.w,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            // borderRadius: BorderRadius.circular(100),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffFFD505),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        height: 30.h ,
                        width: 60.w,
                        child: Image.asset("assets/srs.png", fit: BoxFit.fill,),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          height: 2.5.h,
                          width: 5.w,
                          decoration: BoxDecoration(
                            // color: Colors.blue
                          ),
                          child: CircleAvatar(
                            backgroundColor: Color(0xffFFD505),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35.h,),
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
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 39.h),
                  // margin: EdgeInsets.symmetric(vertical: 10.h),
                  height: 0.7.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                    color: Color(0xff8FA2B7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.h),
                  height: 50.1.h,
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
                        child: Text("What is a 'Seed phrase'",
                          style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black)),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
                          child: Text("A seed phrase is a set of twelve words that contains all the information about your wallet, including your funds. It's like a secret code used to access your entire wallet.",
                              style: GoogleFonts.archivo(textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, height: 1.sp, color: Color(0xff50657C)),)
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
                          child: Text("You must keep your seed phrase secret and safe. If someone gets your seed phrase, they'll gain control over your accounts.",
                              style: GoogleFonts.archivo(textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, height: 1.sp, color: Color(0xff50657C)),)
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20.sp, right: 20.sp, top: 30.sp),
                          child: Text("Save it in a place where only you can access it. If you lose it, not even MetaMask can help you recover it.",
                              style: GoogleFonts.archivo(textStyle: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, height: 1.sp, color: Color(0xff50657C)),)
                          )
                      ),
                    ],
                  ),
                ),
              ],
            )
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProtectYourWallet(),),);
                },
                child: BpttomButton(btn_text: "I Got It",),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

