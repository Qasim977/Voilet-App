import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Constant/constant.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'qr_scan.dart';

class ImportAccount extends StatefulWidget {
  const ImportAccount({Key? key}) : super(key: key);

  @override
  _ImportAccountState createState() => _ImportAccountState();
}

class _ImportAccountState extends State<ImportAccount> {
  bool? value = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
            child: Container(
              // color: Colors.deepOrange,
            ),
          ),
        ),
        toolbarHeight: 10.h,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(left: 8.w),
          height: 3.5.h,
          width: 40.w,
          // color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Etherium Main", style: GoogleFonts.archivo(textStyle: TextStyle(color: Color(0xff28323E), fontSize: 13.sp),)),
              Icon(Icons.keyboard_arrow_down_rounded, color: kTextColor, size: 18.sp,)
            ],
          ),
        ),
        leading: Container(
          margin: EdgeInsets.only(left: 13.sp, right: 0.sp, bottom: 14.sp, top: 22.sp),
          height: 5.h,
          width: 10.w,
          // color: Colors.red,
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile.png",),
          ),
        ),
      ),
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
                  margin: EdgeInsets.only(top: 2.h),
                  height: 10.h,
                  width: 100.w,
                  color: Colors.white,
                  child: Center(
                    child: Text("9.2362 ETH", style: TextStyle(color: kPrimaryColor, fontSize: 34.sp, fontWeight: FontWeight.w500),),
                  ),
                ),
                Container(
                  height: 5.h,
                  width: 100.w,
                  // color: Colors.red,
                  child: Center(
                    child: Text("\$16,858.15 +0.7%", style: TextStyle(color: kTextColor, fontSize: 12.sp, fontWeight: FontWeight.w400),),
                  ),
                ),
                Container(
                  height: 12.h,
                  width: 100.w,
                  // color: Colors.blueGrey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: 6.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD505),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          margin: EdgeInsets.only(left: 1.w, right: 1.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 3.5.h,
                                width: 7.w,
                                // color: Colors.red,
                                child: Image.asset("assets/send.png", fit: BoxFit.fill,),
                              ),
                              SizedBox(width: 2.w,),
                              Text("Sent", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                            ],
                          )
                      ),
                      GestureDetector(

                        child: Container(
                            height: 6.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFFD505),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            margin: EdgeInsets.only(left: 1.w, right: 1.w),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 3.5.h,
                                  width: 7.w,
                                  // color: Colors.red,
                                  child: Image.asset("assets/wallet.png", fit: BoxFit.fill,),
                                ),
                                SizedBox(width: 2.w,),
                                Text("Receive", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                              ],
                            )
                        ),
                      ),
                      Container(
                          height: 6.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFD505),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          margin: EdgeInsets.only(left: 1.w, right: 1.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 3.5.h,
                                width: 7.w,
                                // color: Colors.red,
                                child: Image.asset("assets/buy.png", fit: BoxFit.fill,),
                              ),
                              SizedBox(width: 2.w,),
                              Text("Buy", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                            ],
                          )
                      )
                    ],
                  ),
                ),
                // SizedBox(height: 35.h,),
                Container(
                  height: 10.h,
                  width: 100.w,
                  // color: Colors.greenAccent,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        height: 4.5.h,
                        width: 35.w,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                        ),
                        child: Padding(
                            padding: EdgeInsets.only(left: 25.sp, top: 3.sp),
                            child: Text("Token", style: TextStyle(color: kTextColor, fontSize: 20.sp, fontWeight: FontWeight.w500),))),
                  ),
                ),
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
                    margin: EdgeInsets.only(top: 25.h),
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
                    height: 50.h,
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
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.sp, bottom: 15.sp),
                          child: Text("Import Account",
                            style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black)),
                          ),
                        ),
                        Container(
                          height: 15.h,
                          width: 85.w,
                          // color: Colors.cyanAccent,
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Imported accounts are viewable in your wallet but are not recoverable with your DeGe seed phrase.",
                                style: TextStyle(color: kTextColor, fontWeight: FontWeight.w400, fontSize: 10.4.sp, height: 1.sp),
                              ),
                              Text("Learn more about imported accounts here.",
                                style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500, fontSize: 11.sp),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.sp, bottom: 10.sp, right: 26.w),
                          child: Text("Paste your private key string",
                            style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black,),),),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.h),
                          height: 15.h,
                          width: 85.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0,2),
                                blurRadius: 7.0,
                                spreadRadius: 3
                            )],
                          ),
                          child:  Padding(
                            padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("e.g",
                                  style: TextStyle(color: kTextColor, fontWeight: FontWeight.w400, fontSize: 10.sp),
                                ),
                                SizedBox(height: 1.5.h,),
                                Text("4395a2a6349e069ab44043f01d77cf7b91822b1841e333128d98f7878495bf53",
                                  style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500, fontSize: 11.sp, height: 1.2.sp),
                                ),
                              ],
                            ),
                          ),
                        )
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => QrScan(),),);
                      },
                      child: RemindeMeButton(btn_label: "Scan QR code",),
                    ),
                    GestureDetector(
                      // onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => ConvenientScreen(),),);
                      // },
                      child: RemindeMeButton(btn_label: "Import",),
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
