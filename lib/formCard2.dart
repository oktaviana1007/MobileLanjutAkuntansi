import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: ScreenUtil.getInstance().setHeight(600),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, 15.0),
                blurRadius: 15.0),
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0.0, -10.0),
                blurRadius: 10.0),
          ]),
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Sign Up",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Product-Bold",
                    letterSpacing: .6)),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Username",
                style: TextStyle(
                    fontFamily: "Product-Regular",
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Password",
                style: TextStyle(
                    fontFamily: "Product-Regular",
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              obscureText: true, 
            ),
            SizedBox(
              height: ScreenUtil.getInstance().setHeight(30),
            ),
            Text("Confirm Password",
                style: TextStyle(
                    fontFamily: "Product-Regular",
                    color: Colors.grey,
                    fontSize: ScreenUtil.getInstance().setSp(26))),
            TextField(
              obscureText: true, 
            ),
          ],
        ),
      ),
    );
  }
}