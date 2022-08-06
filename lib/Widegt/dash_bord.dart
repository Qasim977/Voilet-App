// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:personal_voilet/Screens/Home_screen.dart';
// import 'package:sizer/sizer.dart';
//
// class DashBord extends StatefulWidget {
//   const DashBord({Key? key}) : super(key: key);
//
//   @override
//   _DashBordState createState() => _DashBordState();
// }
//
// class _DashBordState extends State<DashBord> {
//   int _selectedItemIndex=0;
//
//   final List<Widget> _children=[
//     HomeScreen(),
//     HomeScreen(),
//     HomeScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _children[_selectedItemIndex],
//       bottomNavigationBar: Container(
//         height: 8.h,
//         width: 100.w,
//         decoration: BoxDecoration(
//           color: Color(0xffE7EBEF),
//           // border: Border.all(color: Colors.black12, width: 1.sp),
//           // borderRadius: BorderRadius.only(topLeft: Radius.circular(35.sp), topRight: Radius.circular(35.sp)),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             DashBord(Icons.account_balance_wallet_rounded, 0, "Wallet"),
//             DashBord(Icons.swap_horizontal_circle_outlined, 1, "Swap"),
//             DashBord(Icons.settings, 2, "Settings"),
//           ],
//         ),
//       ),);
//   }
//   Widget DashBord(IconData icon, int index, String title){
//     return GestureDetector(
//       onTap: (){
//         setState((){
//           _selectedItemIndex=index;
//         });
//       },
//       child: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.only(top: 6.sp),
//             width:  30.w,
//             child: Icon(icon, size: 20.sp, color: index==_selectedItemIndex ? Color(0xfff4b41a): Colors.black,),
//           ),
//           Text(title, style: TextStyle(color: index==_selectedItemIndex ? Color(0xfff4b41a): Colors.black, fontSize: 11.sp, fontWeight: FontWeight.w500),)
//         ],
//       )
//     );
//   }
// }
