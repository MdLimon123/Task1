import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_image.dart';

class BuildMenu extends StatelessWidget {
  const BuildMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage(AppImage.men),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Hey, 👋',
            style: TextStyle(
                fontSize: 28.sp,
                color: Color(0xFF707B81),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Alisson Becker',
            style: TextStyle(
                fontSize: 40.sp,
                color: const Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 80.w,
          ),
          ListTile(
            title: Text(
              'Profile',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.user),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Home Page',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.home),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'My Cart',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.shopping),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Favorite',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.heart),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Orders',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.delivery),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.notification),
            textColor: Colors.white,
            dense: true,
          ),
          SizedBox(
            height: 50.h,
          ),
          Container(width: 245.w, height: 2.h, color: const Color(0xffb2d3b48)),
          SizedBox(
            height: 60.h,
          ),
          ListTile(
            title: Text(
              'Sign Out',
              style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
            ),
            leading: Image.asset(AppImage.signout),
            textColor: Colors.white,
            dense: true,
          ),
        ],
      ),
    );
  }
}
