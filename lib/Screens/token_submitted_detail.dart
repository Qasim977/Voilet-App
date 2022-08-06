import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Constant/constant.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'token_compelet.dart';

class TokenSubmittedDetail extends StatefulWidget {
  const TokenSubmittedDetail({Key? key}) : super(key: key);

  @override
  _TokenSubmittedDetailState createState() => _TokenSubmittedDetailState();
}

class _TokenSubmittedDetailState extends State<TokenSubmittedDetail> {
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
                // SizedBox(height: 35.h,),
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
                    margin: EdgeInsets.only(top: 15.h),
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
                    height: 60.h,
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
                          child: Text("Sent BNB",
                            style: GoogleFonts.archivo(textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp, color: Colors.black)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.h),
                          height: 3.h,
                          width: 90.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Status", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                              Text("Date",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          height: 3.h,
                          width: 90.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Submitted", style: TextStyle(color: Color(0xff133893), fontSize: 12.sp, fontWeight: FontWeight.w600),),
                              Text("Mar 3 at 10:40am",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.h),
                          height: 3.h,
                          width: 90.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("From", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                              Text("To",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          height: 4.h,
                          width: 90.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("0x3Dc6...DfCE", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                              Text("0x3Dc6...DfF9",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.h),
                          height: 2.5.h,
                          width: 90.w,
                          // color: Colors.yellow,
                          child: Text("Nonce", style: TextStyle(color: Color(0xff485B70), fontWeight: FontWeight.w400, fontSize: 10.sp),),
                        ),
                        Container(
                          height: 3.h,
                          width: 90.w,
                          // color: Colors.yellow,
                          child: Text("#0", style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 4.h),
                          height: 4.h,
                          width: 80.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Amount", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                              Text("2.35 BNB",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          height: 4.h,
                          width: 80.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Network fee", style: TextStyle(color: kTextColor, fontSize: 11.sp),),
                              Text("0.21 BNB",style: TextStyle(color: kTextColor, fontSize: 11.sp)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 3.h),
                          height: 5.h,
                          width: 80.w,
                          // color: Colors.red,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Amount", style: TextStyle(color: kTextColor, fontSize: 12.sp, fontWeight: FontWeight.w600),),
                              Text("2.56 BNB",style: TextStyle(color: kTextColor, fontSize: 12.sp,fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        Container(
                          height: 3.h,
                          width: 80.w,
                          // color: Colors.yellow,
                          child: Text("\$594.304", style: TextStyle(color: kTextColor, fontSize: 10.sp),textAlign: TextAlign.end,),
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
                        Navigator.pop(context);
                      },
                      child: RemindeMeButton(btn_label: "Cancel",),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TokenCompelet(),),);
                      },
                      child: RemindeMeButton(btn_label: "Speed Up",),
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
