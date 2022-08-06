import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;


class QrScan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Rectangle11Widget - VECTOR
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Color(0xffDAE0E7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.h),
              height: 5.h,
              width: 90.w,
              // color: Colors.yellow,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.close,size: 22.sp,)),
            ),
            SizedBox(height: 24.h,),
            Container(
              height: 25.h,
              width: 50.w,
              // color: Colors.cyanAccent,
              child: Image.asset("assets/qr.png", fit: BoxFit.fill,),
            ),
            Text("Scaning..."),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(top: 3.h, right: 10.w),
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
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  // color: Colors.purple,
                  margin: EdgeInsets.only(top: 0.h),
                  height: 30.h ,
                  width: 35.w,
                  child: Transform.rotate(
                      angle: -math.pi / 7,
                      child: Image.asset("assets/img4.png", fit: BoxFit.fill,)),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
