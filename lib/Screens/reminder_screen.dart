import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';
import 'tap_view.dart';

class ReminderScreen extends StatelessWidget {
  const ReminderScreen({Key? key}) : super(key: key);

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
              // color: Colors.red,
              height: 30.h,
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
                    height: 25.h ,
                    width: 50.w,
                    child: Image.asset("assets/srs.png"),
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
            Container(
              margin: EdgeInsets.only(top: 6.h),
              height: 20.h,
              width: 86.w,
              // color: Colors.black45,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0.sp),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "Don't risk losing your funds. protect your wallet by saving your",
                            style: TextStyle(color: Colors.black, fontSize: 13.sp,height: 1.sp)),
                        TextSpan(
                            text: " seed phrase",
                            style: TextStyle(color: Color(0xffFFE243), fontSize: 13.sp, fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: " in a place you trust.",
                            style: TextStyle(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w400,height: 1.sp)),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.sp),
                    child: Text("It's the only way to recover your wallet if you get locked out of the app or get a new device.",
                        style: GoogleFonts.roboto(textStyle:  TextStyle(color: Colors.black, fontSize: 13.sp, fontWeight: FontWeight.w400),)
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h, bottom: 2.h),
              height: 4.h,
              width: 80.w,
              // color: Colors.purple,
              child: Center(child: Text("Remind Me Later", style: TextStyle(color: Colors.black, fontSize: 14.sp, fontWeight: FontWeight.w600)))
            ),
            Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TapView(),),);
                },
                child: BpttomButton(btn_text: "Start",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
