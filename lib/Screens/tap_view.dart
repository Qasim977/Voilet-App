import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';

import 'Seed Phrase Selection/your_seed.dart';

class TapView extends StatelessWidget {
  const TapView({Key? key}) : super(key: key);

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
              height: 12.h,
              width: 89.w,
              // color: Colors.yellow,
              child: Text("This is your seed phrase. Write it down on a paper and keep it in a safe place. You'll be asked to\n re-enter this phrase (in order) on the next step.",
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400, height: 1.2.sp, color: Color(0xff8FA2B7)),),
              // style: TextA,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h, bottom: 10.h),
              height: 40.h,
              width: 89.w,
              decoration: BoxDecoration(
                color: Color(0xffFFF39B),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Tap to reveal your seed phrase", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500,),),
                  Text("Make sure no one is watching your screen.", style: TextStyle(fontSize: 11.sp, height: 2.sp),),
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    height: 8.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.remove_red_eye_outlined, size: 22.sp,),
                        SizedBox(width: 3.w,),
                        Text("View", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.sp),)
                      ],
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => YourSeed(),),);
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
