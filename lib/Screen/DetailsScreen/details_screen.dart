import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1/const/app_image.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen(
      {super.key,
      required this.image,
      required this.best,
      required this.name,
      required this.price});
  String image;
  String best;
  String name;
  String price;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.w, top: 20.h, right: 20.w),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                    radius: 40.r,
                    backgroundColor: const Color(0xFFFFFFFF),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF1A2530),
                    )),
              ),
              Text(
                "Men’s Shoes",
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF1A2530)),
              ),
              CircleAvatar(
                  radius: 40.r,
                  backgroundColor: const Color(0xFFFFFFFF),
                  child: Image.asset(AppImage.shopping)),
            ],
          ),
          Image.asset(image),
          CircleAvatar(
            radius: 40.r,
            backgroundColor: const Color(0xFF5B9EE1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.previous,
                  fit: BoxFit.fill,
                  width: 15.w,
                ),
                SizedBox(
                  width: 20.w,
                ),
                Image.asset(
                  AppImage.next,
                  fit: BoxFit.fill,
                  width: 15.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            best,
            style: TextStyle(
                fontSize: 28.sp,
                color: const Color(0xFF5B9EE1),
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: 35.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1A2530)),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(price,
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF1A2530))),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Air Jordan is an American brand of basketball\n shoes athletic, casual, and style clothing \nproduced by Nike....",
            style: TextStyle(
                color: const Color(0xFF707B81),
                fontSize: 25.sp,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Gallery',
            style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1A2530)),
          ),
          SizedBox(
            height: 25.h,
          ),
          Row(
            children: [
              Container(
                height: 100.h,
                width: 130.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.circular(25.r)),
                child: Image.asset(AppImage.shoes1),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                height: 100.h,
                width: 130.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.circular(25.r)),
                child: Image.asset(AppImage.shoes),
              ),
              SizedBox(
                width: 25.w,
              ),
              Container(
                height: 100.h,
                width: 130.w,
                decoration: BoxDecoration(
                    color: const Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.circular(25.r)),
                child: Image.asset(AppImage.shoes2),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF1A2530)),
              ),
              Row(
                children: [
                  Text(
                    'EU',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1A2530)),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text('US',
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1A2530))),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text('UK',
                      style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF1A2530)))
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFFF8F9FA),
                child: Text(
                  '38',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
              SizedBox(
                width: 23.w,
              ),
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFFF8F9FA),
                child: Text(
                  '39',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
              SizedBox(
                width: 23.w,
              ),
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFF5B9EE1),
                child: Text(
                  '40',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
              SizedBox(
                width: 23.w,
              ),
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFFF8F9FA),
                child: Text(
                  '41',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFFF8F9FA),
                child: Text(
                  '42',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              CircleAvatar(
                radius: 40.r,
                backgroundColor: const Color(0xFFF8F9FA),
                child: Text(
                  '43',
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF707B81)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            title: Text(
              'Price',
              style: TextStyle(
                  fontSize: 25.sp,
                  color: const Color(0xFF707B81),
                  fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              '\$849.69',
              style: TextStyle(
                  fontSize: 32.sp,
                  color: const Color(0xFF1A2530),
                  fontWeight: FontWeight.w500),
            ),
            trailing: Container(
              width: 220.w,
              decoration: BoxDecoration(
                  color: const Color(0xFF5B9EE1),
                  borderRadius: BorderRadius.circular(40.r)),
              child: Center(
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          )
        ],
      ),
    ));
  }
}
