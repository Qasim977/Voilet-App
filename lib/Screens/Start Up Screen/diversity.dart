import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';
import 'securty_screen.dart';

class DiversityScreen extends StatelessWidget {
  const DiversityScreen({Key? key}) : super(key: key);

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
              height: 32.h,
              width: 65.w,
              child: Column(
                children: [
                  Container(
                    // color: Colors.purple,
                    height: 32.h ,
                    width: 62.w,
                    child: Image.asset("assets/img1.png"),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.h),
              height: 10.h,
              width: 45.w,
              // color: Colors.black45,
              child: Center(child: Text("Diversity", style: TextStyle(color: Color(0xffFFD505,), fontWeight: FontWeight.w600, fontSize: 30.sp),)),
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
                        backgroundColor: Color(0xffFFD505),
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
                        backgroundColor: Color(0xffDAE0E7),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SecurtyScreen(),),);
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
