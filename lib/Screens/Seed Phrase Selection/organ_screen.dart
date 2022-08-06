import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Constant/constant.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:personal_voilet/Widegt/seed_phrase_button.dart';
import 'package:sizer/sizer.dart';

import '../success.dart';

class OrganScreen extends StatelessWidget {
  const OrganScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // margin: EdgeInsets.only(top: 10.h),
              height: 6.h,
              width: 100.w,
              // color: Colors.yellow,
              child: Image.asset("assets/process2.png", fit: BoxFit.fill,),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.sp),
                child: Text("Confirm Seed Phrase", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xffFFD505)),)),
            Padding(
              padding: EdgeInsets.only(top: 16.sp,),
              child: Text("Select each word in the order it was",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 1.2.sp, color: Colors.black),),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.sp,),
              child: Text("presented to you",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, height: 1.2.sp, color: Colors.black),),
            ),
            Container(
              margin: EdgeInsets.only(top: 7.5.h, bottom: 5.h),
              height: 10.h,
              width: 100.w,
              // color: Colors.green,
              child: Center(
                  child: Text("12. organ", style: GoogleFonts.archivo(textStyle: TextStyle(color: kPrimaryColor, fontSize: 32.sp, fontWeight: FontWeight.w500)),)),
            ),
            Container(
              height: 10.h,
              width: 100.w,
              // color: Colors.black12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                    height: 0.4.h,
                    width: 12.w,
                    color: kPrimaryColor,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                    height: 0.4.h,
                    width: 12.w,
                    color: kPrimaryColor,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.w),
                    height: 0.4.h,
                    width: 12.w,
                    color: Color(0xff28323E),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 7.h),
              height: 20.h,
              width: 89.w,
              decoration: BoxDecoration(
                // color: Colors.red,
                color: Color(0xffC2C2C2).withOpacity(0.08),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      abuse_button("drum", 23.w),
                      abuse_button("frequent", 27.w),
                      abuse_button("target", 23.w),
                    ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      abuse_button("abuse", 23.w),
                      SizedBox(width: 2.w,),
                      abuse_button("organ", 23.w),
                      SizedBox(width: 2.w,),
                      abuse_button("bubble", 23.w),
                    ],),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessScreen(),),);
                },
                child: BpttomButton(btn_text: "Next",),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget abuse_button(String label, double wth) {
    return Container(
      // margin: EdgeInsets.only(top: 2.8.h, left: 4.w, right: 4.w),
      height: 6.5.h,
      width: wth,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0,8),
            blurRadius: 5.0,
            spreadRadius: 0
        )],
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(label, style: TextStyle(fontSize: 12.sp, color: Color(0xff50657C)),),
      ),
    );
  }
}
