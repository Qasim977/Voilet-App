import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_voilet/Constant/constant.dart';
import 'package:sizer/sizer.dart';

import 'Accounts/accounts.dart';
import 'detail_transection_recived.dart';
import 'network.dart';
import 'token_submitted_detail.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
int _selectedIndex = 4;
class _HomeScreenState extends State<HomeScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10.h,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.only(left: 8.w),
          height: 3.5.h,
          width: 43.w,
          // color: Colors.red,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Etherium Main", style: GoogleFonts.archivo(textStyle: TextStyle(color: Color(0xff28323E), fontSize: 13.sp),)),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => NetworkSelection()),);
              }, icon: Icon(Icons.keyboard_arrow_down_rounded, color: kTextColor, size: 18.sp,))
            ],
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Accounts(),));
          },
          child: Container(
            margin: EdgeInsets.only(left: 13.sp, right: 0.sp, bottom: 14.sp, top: 22.sp),
            height: 5.h,
            width: 10.w,
            // color: Colors.red,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.png",),
            ),
          ),
        ),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 10.h,
              width: 100.w,
              color: Colors.white,
              child: Center(
                child: Text("9.2362 ETH", style: TextStyle(color: kPrimaryColor, fontSize: 34.sp, fontWeight: FontWeight.w500),),
              ),
            ),
            Container(
              height: 5.h,
              width: 100.w,
              // color: Colors.red,
              child: Center(
                child: Text("\$16,858.15 +0.7%", style: TextStyle(color: kTextColor, fontSize: 12.sp, fontWeight: FontWeight.w400),),
              ),
            ),
            Container(
              height: 12.h,
              width: 100.w,
              // color: Colors.blueGrey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                height: 6.h,
                width: 25.w,
                decoration: BoxDecoration(
                  color: Color(0xffFFD505),
                  borderRadius: BorderRadius.circular(50),
                ),
                margin: EdgeInsets.only(left: 1.w, right: 1.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 3.5.h,
                      width: 7.w,
                      // color: Colors.red,
                      child: Image.asset("assets/send.png", fit: BoxFit.fill,),
                    ),
                    SizedBox(width: 2.w,),
                    Text("Sent", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                  ],
                )
              ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailTransectionRecived(),),);
                  },
                  child: Container(
                  height: 6.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFD505),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.only(left: 1.w, right: 1.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3.5.h,
                        width: 7.w,
                        // color: Colors.red,
                        child: Image.asset("assets/wallet.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 2.w,),
                      Text("Receive", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                    ],
                  )
              ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => TokenSubmittedDetail(),));
                  },
                  child: Container(
                  height: 6.h,
                  width: 25.w,
                  decoration: BoxDecoration(
                    color: Color(0xffFFD505),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.only(left: 1.w, right: 1.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 3.5.h,
                        width: 7.w,
                        // color: Colors.red,
                        child: Image.asset("assets/buy.png", fit: BoxFit.fill,),
                      ),
                      SizedBox(width: 2.w,),
                      Text("Buy", style: TextStyle(color: kTextColor ,fontSize: 14, fontWeight: FontWeight.w600),),
                    ],
                  )
              ),
                ),
                ],
              ),
            ),
            Container(
              height: 10.h,
              width: 100.w,
              // color: Colors.greenAccent,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 4.5.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                        padding: EdgeInsets.only(left: 25.sp, top: 3.sp),
                        child: Text("Token", style: TextStyle(color: kTextColor, fontSize: 20.sp, fontWeight: FontWeight.w500),))),
              ),
            ),
            token_card("Binance Coin", "\$226.69", "  +2%", "19.2371 BNB"),
            token_card("USD Coin", "\$1.00", "  +4.3%", "92,3 USDC"),
            token_card("Synthetix", "\$20.83", "  -1.3%", "42.74 SNX"),
            Container(
              height: 11.h,
              width: 100.w,
              // color: Colors.deepOrange,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add, color: Colors.black, size: 20.sp,),
                    Text(" Add Tokens", style: TextStyle(color: kTextColor, fontWeight: FontWeight.w600, fontSize: 14.sp),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
        bottomNavigationBar: BottomNavyBar(
          containerHeight: 7.5.h,
          iconSize: 24.sp,
          backgroundColor: Color(0xffE7EBEF),
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            // _pageController.animateToPage(index,
            //     duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              title: Padding(
                  padding: EdgeInsets.only(left: 8.sp),
                  child: Text('Wallet', style: TextStyle(color: Color(0xff937301)),)),
              activeColor: Color(0xffE9CF02),
              inactiveColor: Colors.black
            ),

            BottomNavyBarItem(
                icon: Icon(Icons.swap_horizontal_circle_outlined),
                title: Padding(
                    padding: EdgeInsets.only(left: 8.sp),
                    child: Text('Swap',style: TextStyle(color: Color(0xff937301)))),
                activeColor: Color(0xffE9CF02),
                inactiveColor: Colors.black
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Padding(
                    padding: EdgeInsets.only(left: 8.sp),
                    child: Text('Settings',style: TextStyle(color: Color(0xff937301)))),
                activeColor: Color(0xffE9CF02),
                inactiveColor: Colors.black
            ),
          ],
        )
    );
  }
  Widget token_card(String title, String sub_title, String per, String traling){
    return Container(
      height: 10.h,
      width: 100.w,
      // color: Colors.green,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(14.sp),
            height: 6.h,
            width: 12.w,
            // color: Colors.purple,
            child: CircleAvatar(
              backgroundColor: Color(0xffC1CBD7),
            ),
          ),
          Container(
            height: 6.h,
            width: 45.w,
            // color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600, color: kTextColor),),
                RichText(
                  text: TextSpan(
                    text: sub_title,
                    style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400, color: kTextColor),
                    children: <TextSpan>[
                      TextSpan(text: per, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: kPrimaryColor)),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 6.h,
            width: 30.w,
            // color: Colors.red,
            child: Text(traling, style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600,color: kTextColor),),
          )
        ],
      ),
    );
  }
}
