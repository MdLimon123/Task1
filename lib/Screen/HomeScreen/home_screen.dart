import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:task1/Controller/home_controller.dart';
import 'package:task1/Screen/DetailsScreen/details_screen.dart';
import 'package:task1/const/app_image.dart';
import 'package:task1/widgets/build_Menu.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _homeController = Get.put(HomeController());
  var iconList = [
    Icons.home,
    Icons.favorite_border,
    Icons.notifications_none,
    Icons.person_2
  ];
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SideMenu(
      background: const Color(0xFF1E1E1E),
      type: SideMenuType.shrikNRotate,
      key: _homeController.sideMenuKey,
      menu: const BuildMenu(),
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15.w, right: 10.w, top: 15.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        _homeController.openCloseSideMenu();
                      },
                      child: CircleAvatar(
                          radius: 40.r,
                          backgroundColor: const Color(0xFFFFFFFF),
                          child: Image.asset(AppImage.menu)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Store location',
                          style: TextStyle(
                              fontSize: 25.sp,
                              color: const Color(0xFF707B81),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            Image.asset(AppImage.location),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Mondolibug, Sylhet',
                              style: TextStyle(
                                  fontSize: 28.sp,
                                  color: const Color(0xFF1A2530),
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                        radius: 40.r,
                        backgroundColor: const Color(0xFFFFFFFF),
                        child: Image.asset(AppImage.cart))
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: Row(
                      children: [
                        Image.asset(AppImage.search),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Looking for shoes',
                          style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF707B81)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 170.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                          color: const Color(0xFF5B9EE1),
                          borderRadius: BorderRadius.circular(40.r)),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30.r,
                              backgroundColor: const Color(0xFFFFFFFF),
                              child: Image.asset(AppImage.nike),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Nike',
                              style: TextStyle(
                                  color: const Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 25.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CircleAvatar(
                      radius: 45.r,
                      backgroundColor: const Color(0xFFFFFFFF),
                      child: Image.asset(AppImage.puma),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CircleAvatar(
                      radius: 45.r,
                      backgroundColor: const Color(0xFFFFFFFF),
                      child: Image.asset(AppImage.under),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CircleAvatar(
                      radius: 45.r,
                      backgroundColor: const Color(0xFFFFFFFF),
                      child: Image.asset(AppImage.adidas),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    CircleAvatar(
                      radius: 45.r,
                      backgroundColor: const Color(0xFFFFFFFF),
                      child: Image.asset(AppImage.conver),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                ListTile(
                  title: Text(
                    'Popular Shoes',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1A2530)),
                  ),
                  trailing: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF5B9EE1)),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    customeItem(
                        image: AppImage.shoes,
                        best: 'Best Seller',
                        name: 'Nike Jordan',
                        price: '\$493.00'),
                    SizedBox(
                      width: 40.w,
                    ),
                    customeItem(
                        image: AppImage.shoes1,
                        best: 'Best Seller',
                        name: 'Nike Air Max',
                        price: '\$897.99'),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                ListTile(
                  title: Text(
                    'New Arrivals',
                    style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1A2530)),
                  ),
                  trailing: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF5B9EE1)),
                  ),
                ),
                Container(
                  height: 200.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 15.w, top: 25.h, right: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Best Choice',
                              style: TextStyle(
                                  color: const Color(0xFF5B9EE1),
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              'Nike Air Jordan',
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF1A2530)),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              '\$849.69',
                              style: TextStyle(
                                  fontSize: 28.sp,
                                  color: const Color(0xFF1A2530),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Image.asset(AppImage.shoes2)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF5B9EE1),
          child: Image.asset(
            AppImage.shopping,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            height: 80.h,
            iconSize: 40.sp,
            gapLocation: GapLocation.center,
            backgroundColor: Colors.white,
            leftCornerRadius: 50.r,
            rightCornerRadius: 50.r,
            activeColor: const Color(0xFF5B9EE1),
            inactiveColor: const Color(0xFF707B81),
            icons: iconList,
            activeIndex: currentIndex,
            onTap: (value) {}),
      ),
    ));
  }

  Widget customeItem(
      {required String best,
      required String name,
      required String price,
      required String image}) {
    return InkWell(
      onTap: () {
        Get.to(DetailsScreen(
          image: image,
          best: best,
          name: name,
          price: price,
        ));
      },
      child: Container(
        height: 215.h,
        width: 280.w,
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(16.r)),
        child: Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(image),
              Text(
                best,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF5B9EE1)),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF1A2530)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF1A2530)),
                  ),
                  Container(
                    height: 40.h,
                    width: 60.w,
                    decoration: BoxDecoration(
                        color: const Color(0xFF5B9EE1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            bottomRight: Radius.circular(25.r))),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
