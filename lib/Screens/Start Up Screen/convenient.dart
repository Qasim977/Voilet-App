import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import '../wallet_screen.dart';

class ConvenientScreen extends StatelessWidget {
  const ConvenientScreen({Key? key}) : super(key: key);

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
                    // color: Colors.purple,
                    height: 30.h ,
                    width: 55.w,
                    child: Image.asset("assets/img2.png"),
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
              margin: EdgeInsets.only(top: 10.h),
              height: 6.h,
              width: 60.w,
              // color: Colors.purple,
              child: Center(child: Text("Convenient", style: TextStyle(color: Color(0xffFFD505,), fontWeight: FontWeight.w600, fontSize: 30.sp),)),
            ),
            Container(
              // margin: EdgeInsets.only(top: 0.h),
              height: 6.h,
              width: 60.w,
              // color: Colors.black45,
              child: Center(child: Text("Transaction", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 27.sp),)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              height: 2.h,
              width: 10.w,
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 1.h,
                      width: 2.w,
                      decoration: BoxDecoration(
                        // color: Colors.blue
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffDAE0E7),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 1.h,
                      width: 2.w,
                      decoration: BoxDecoration(
                        // color: Colors.blue
                      ),
                      child: CircleAvatar(
                        backgroundColor: Color(0xffDAE0E7),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 1.h,
                      width: 2.w,
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
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen(),),);
                },
                child: BpttomButton(btn_text: "Get Start",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
