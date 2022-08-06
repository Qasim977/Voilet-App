import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

class PasswordScreen2 extends StatefulWidget {
  const PasswordScreen2({Key? key}) : super(key: key);

  @override
  _PasswordScreen2State createState() => _PasswordScreen2State();
}

class _PasswordScreen2State extends State<PasswordScreen2> {
  bool? value = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 17.2.h),
              height: 12.h,
              width: 100.w,
              // color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 0.h, bottom: 0.h, left: 5.w, right: 5.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(width: 0.6.sp, color: Color(0xff6A84A0)),
                    ),
                    height: 10.h,
                    width: 70.w,
                    child: Center(
                      child: TextFormField(
                        style: TextStyle(fontSize: 12.sp,color: Color(0xff6A84A0),fontWeight: FontWeight.w400),
                        // controller: pTC,
                        obscureText: false,
                        cursorColor: Colors.black45,
                        decoration: InputDecoration(
                          focusColor: Color(0xff6A84A0),
                          label: Text("Seed Phrase"),
                          labelStyle: TextStyle(color: Color(0xff587089),fontWeight: FontWeight.w500),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 20,
                          ),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 6.h,
                    width: 14.w,
                    // color: Colors.blue,
                    child: Image.asset("assets/seed.png", fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.h, bottom: 0.h, left: 5.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 0.6.sp, color: Color(0xff6A84A0)),
              ),
              height: 9.h,
              width: 100.w,
              child: Center(
                child: TextFormField(
                  style: TextStyle(fontSize: 12.sp,color: Color(0xff587089),fontWeight: FontWeight.w400),
                  // controller: pTC,
                  obscureText: false,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    focusColor: Color(0xff587089),
                    label: Text("New Password"),
                    labelStyle: TextStyle(color: Color(0xff587089),fontWeight: FontWeight.w500),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.sp, bottom: 0.h, left: 8.w, right: 5.w),
              width: 100.w,
              child:  Text("Must be at least 8 characters", style: TextStyle(color: Color(0xff587089), fontSize: 11.sp),),),
            Container(
              margin: EdgeInsets.only(top: 4.h, bottom: 0.h, left: 5.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 0.6.sp, color: Color(0xff587089)),
              ),
              height: 9.h,
              width: 100.w,
              child: Center(
                child: TextFormField(
                  style: TextStyle(fontSize: 12.sp,color: Color(0xff587089),fontWeight: FontWeight.w400),
                  // controller: pTC,
                  obscureText: false,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    focusColor: Color(0xff6A84A0),
                    label: Text("Confirm Password"),
                    labelStyle: TextStyle(color: Color(0xff587089), fontWeight: FontWeight.w500),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 20,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.h, left: 68.w),
              child: FlutterSwitch(
                activeColor: Color(0xffF6DA49),
                width: 17.w,
                height: 3.9.h,
                valueFontSize: 50.0,
                toggleSize: 35.0,
                toggleColor: Color(0xffF3F4F4),
                value: status,
                borderRadius: 30.0,
                padding: 2.sp,
                // showOnOff: true,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 2.h,left: 4.w, right: 5.w),
              width: 100.w,
              height: 10.h,
              // color: Colors.purple,
              padding: EdgeInsets.only(top: 3.h, left: 10.sp),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("By proceeding, you agree to these ",
                          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff8FA2B7))),
                      Text("Term ",
                          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff5F97FF))),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.sp),
                    child: Text("and Conditions",
                        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xff5F97FF))),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 11.5.h),
              height: 10.h,
              width: 100.w,
              color: Color(0xffE7EBEF),
              child: GestureDetector(
                // onTap: (){
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => InfoScreen(),),);
                // },
                child: BpttomButton(btn_text: "Create Password",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
