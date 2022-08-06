import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SeedButton extends StatelessWidget {
  final String label;

  const SeedButton({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 2.8.h, left: 4.w, right: 4.w),
      height: 5.h,
      width: 30.w,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(0,8),
            blurRadius: 5.0,
            spreadRadius: 0
        )],
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(label, style: TextStyle(fontSize: 12.sp, color: Color(0xff50657C)),),
      ),
    );
  }
}
