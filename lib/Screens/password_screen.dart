import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_voilet/Widegt/bottom_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'reminder_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
              margin: EdgeInsets.only(top: 30.h, bottom: 0.h, left: 5.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 0.6.sp, color: Color(0xff6A84A0)),
              ),
              height: 9.h,
              width: 100.w,
              child: Center(
                child: TextFormField(
                  style: TextStyle(fontSize: 12.sp,color: Color(0xff6A84A0),fontWeight: FontWeight.w400),
                  // controller: pTC,
                  obscureText: false,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    focusColor: Color(0xff6A84A0),
                    label: Text("New Password"),
                    labelStyle: TextStyle(color: Color(0xff6A84A0)),
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
              child: Row(children: [
                Text("Password strength: ", style: TextStyle(color: Color(0xff6A84A0), fontSize: 11.sp),),
                Text("Good", style: TextStyle(color: Colors.greenAccent, fontSize: 11.sp),),
              ],),),
            Container(
              margin: EdgeInsets.only(top: 4.h, bottom: 0.h, left: 5.w, right: 5.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(width: 0.6.sp, color: Color(0xff6A84A0)),
              ),
              height: 9.h,
              width: 100.w,
              child: Center(
                child: TextFormField(
                  style: TextStyle(fontSize: 12.sp,color: Color(0xff6A84A0),fontWeight: FontWeight.w400),
                  // controller: pTC,
                  obscureText: false,
                  cursorColor: Colors.black45,
                  decoration: InputDecoration(
                    focusColor: Color(0xff6A84A0),
                    label: Text("New Password"),
                    labelStyle: TextStyle(color: Color(0xff6A84A0)),
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
              child:Text("Must be at least 8 characters", style: TextStyle(color: Color(0xff6A84A0), fontSize: 11.sp),),),
            Container(
              margin: EdgeInsets.only(top: 5.h, left: 68.w),
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
              margin: EdgeInsets.only(top: 3.h),
              width: 100.w,
              height: 10.h,
              // color: Colors.purple,
              padding: EdgeInsets.only(top: 0.h, left: 10.sp),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 8.h,
                    width: 100.w,
                    // color: Colors.greenAccent,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            activeColor: Colors.black,
                            value: this.value,
                            onChanged: (bool? value) {
                              setState(() {
                                this.value = value;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 9.sp),
                            // color: Colors.green,
                            width: 80.w,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("I understand that DeGe cannot recover",
                                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("this password for me. ",
                                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                                    ),
                                    Text("Learn more",
                                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400, color: Color(0xffFFD505)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ),
                        ], //<Widget>[]
                      ),
                  ),
          ],
        ),
      ),
           Container(
                margin: EdgeInsets.only(top: 6.6.h),
                height: 10.h,
                width: 100.w,
                color: Color(0xffE7EBEF),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReminderScreen(),),);
                  },
                  child: BpttomButton(btn_text: "Create Password",),
                ),
              ),
        ],
      ),
      ),
    );
  }
}
