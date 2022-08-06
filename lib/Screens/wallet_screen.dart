import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'password_screen.dart';
import 'password_screen2.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              // color: Colors.red,
              height: 35.h,
              width: 60.w,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
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
                    // color: Colors.purple,
                    height: 28.h ,
                    width: 55.w,
                    child: Image.asset("assets/img3.png"),
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
              margin: EdgeInsets.only(top: 10.h),
              height: 6.h,
              width: 80.w,
              // color: Colors.purple,
              child: Center(child: Text("Wallet Setup", style: TextStyle(color: Color(0xffFFD505,), fontWeight: FontWeight.w600, fontSize: 30.sp),)),
            ),
            Container(
              // margin: EdgeInsets.only(top: 0.h),
              height: 6.h,
              width: 60.w,
              // color: Colors.black45,
              child: Center(child: Text("Transaction", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 27.sp),)),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.h),
              height: 10.h,
              width: 100.w,
              // color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordScreen2(),),);
                },
                child: BpttomButton(btn_text: "Import Using Seed Phrase",),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 2.h),
              height: 10.h,
              width: 100.w,
              // color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordScreen(),),);
                },
                child: BpttomButton(btn_text: "Create a New Wallet",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
