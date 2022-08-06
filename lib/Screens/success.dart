import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Constant/constant.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';
import 'reminder_me_later.dart';
import 'tap_view.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

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
              margin: EdgeInsets.only(bottom: 7.h),
              height: 6.h,
              width: 100.w,
              // color: Colors.yellow,
              child: Image.asset(
                "assets/process2.png",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              // color: Colors.red,
              height: 30.h,
              width: 60.w,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 2.5.h,
                      width: 5.w,
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
                    height: 25.h,
                    width: 50.w,
                    child: Image.asset("assets/success.png"),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 2.h,
                      width: 4.w,
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
              margin: EdgeInsets.only(top: 2.h),
              height: 5.h,
              width: 100.w,
              // color: Colors.blue,
              child: Center(
                child: Text(
                  "Success!",
                  style: GoogleFonts.archivo(
                      textStyle: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 6.h, bottom: 5.h),
              height: 21.h,
              width: 86.w,
              // color: Colors.black45,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.sp),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text:
                                "You've successfully protected your wallet.\nRemember to keep your seed phrase safe, it's your responsibility!",
                            style: GoogleFonts.archivo(textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                height: 1.1.sp))),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.sp),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text:
                                "DefiSquid cannot recover your wallet should you lose it. You can find your seedphrase in Setings > Security & Privacy",
                            style: GoogleFonts.archivo(textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                height: 1.1.sp))),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RemindMeLater(),
                    ),
                  );
                },
                child: BpttomButton(
                  btn_text: "Next",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
