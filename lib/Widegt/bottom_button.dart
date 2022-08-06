import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BpttomButton extends StatelessWidget {
  final String btn_text;

  const BpttomButton({Key? key, required this.btn_text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 7.h,
      width: 50.w,
      decoration: BoxDecoration(
        color: Color(0xffFFD505),
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.only(top: 5.sp, bottom: 3.h, left: 10.w, right: 10.w),
      child: Center(
        child: Text(btn_text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
class RemindeMeButton extends StatelessWidget {
  final String btn_label;

  const RemindeMeButton({Key? key, required this.btn_label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 7.h,
      width: 42.w,
      decoration: BoxDecoration(
        color: Color(0xffFFD505),
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsets.only(top: 5.sp, bottom: 3.h, left: 1.w, right: 1.w),
      child: Center(
        child: Text(btn_label, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
