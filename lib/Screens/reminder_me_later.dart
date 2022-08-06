import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'what_is_seed.dart';

class RemindMeLater extends StatefulWidget {
  const RemindMeLater({Key? key}) : super(key: key);

  @override
  _RemindMeLaterState createState() => _RemindMeLaterState();
}

class _RemindMeLaterState extends State<RemindMeLater> {
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
                  margin: EdgeInsets.only(top: 64.h),
                  // margin: EdgeInsets.symmetric(vertical: 10.h),
                  height: 0.7.h,
                  width: 12.w,
                  decoration: BoxDecoration(
                    color: Color(0xff8FA2B7),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1.4.h),
                  height: 24.h,
                  width: 100.w,
                  decoration:  const BoxDecoration(
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
                        child: Text("Skip Account Security?",
                          style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black)),
                        ),
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Transform.scale(
                            scale: 1.2,
                            child: Checkbox(
                              activeColor: Color(0xff50657C),
                              value: this.value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value;
                                });
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 6.sp),
                            // color: Colors.yellow,
                            width: 80.w,
                            child:  Text("I dunderstand that if i lose mt seed phrase i will not be able to access my wallet",
                              style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w400, height: 1.2.sp ,fontSize: 11.sp, color: Color(0xff50657C))),
                            ),
                          ),
                        ], //<Widget>[]
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
            child: Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => What_is_seed(),),);
                    },
                    child: RemindeMeButton(btn_label: "Secure",),
                  ),
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.push(context, MaterialPageRoute(builder: (context) => ConvenientScreen(),),);
                    // },
                    child: RemindeMeButton(btn_label: "Skip",),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}

