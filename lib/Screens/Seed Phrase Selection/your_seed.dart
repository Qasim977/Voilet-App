import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:personal_voilet/Widegt/seed_phrase_button.dart';
import 'package:sizer/sizer.dart';

import 'abuse_screen.dart';


class YourSeed extends StatelessWidget {
  const YourSeed({Key? key}) : super(key: key);

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
              child: Image.asset("assets/process.png", fit: BoxFit.fill,),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20.sp),
                child: Text("Write Down Your Seed Phrase", style: TextStyle(fontSize: 12.5.sp, fontWeight: FontWeight.w700),)),
            Padding(
              padding: EdgeInsets.only(top: 16.sp, left: 15.sp, right: 15.sp,),
              child: Text("This is your seed phrase. Write it down on a paper and keep it in a safe place. You'll be asked to\nre-enter this phrase (in order) on the next step.",
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w400, height: 1.2.sp, color: Color(0xff8FA2B7)),),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.h, bottom: 11.h),
              height: 45.h,
              width: 89.w,
              decoration: BoxDecoration(
                color: Color(0xffF3F5F7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Table(
                  // border: TableBorder.all(), // Allows to add a border decoration around your table
                  children: [
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "1. future",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "2. use",)),
                    ]),
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "3. abuse",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "4. bubble",)),
                    ]),
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "5. disagree",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "6. yard",)),
                    ]),
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "7. exit",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "8. enact",)),
                    ]),
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "9. drum",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "10. frequent",)),
                    ]),
                    TableRow(children :[
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 6.w, right: 3.w, bottom: 0.h),
                          child: SeedButton(label: "11. target",)),
                      Container(
                          margin: EdgeInsets.only(top: 2.h, left: 3.w, right: 6.w, bottom: 0.h),
                          child: SeedButton(label: "12. organ",)),
                    ]),
                  ]
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 8.6.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AbuseScreen(),),);
                },
                child: BpttomButton(btn_text: "Next",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
