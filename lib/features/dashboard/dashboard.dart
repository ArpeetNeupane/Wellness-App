import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wellness/core/route_config/route_names.dart';
import '../../profile.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //hiding back arrow
        title: Text(
          'Explore',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              child: CircleAvatar(
                radius: 22.r,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 23.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 177.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border, color: Colors.white, size: 22.sp),
                          SizedBox(width: 9.w),
                          Text(
                            'My favourites',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 177.w,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.notifications_outlined, color: Colors.white, size: 22.sp),
                          SizedBox(width: 9.w),
                          Text(
                            'Remind me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              "Today's Quotes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Container(
                width: 350.w,
                height: 100.h,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    '"Your wellness is an investment,\nnot an expense."\n-Rick Riordan',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Quotes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.quotesDetailScreen,
                      arguments: 'Feeling Blessed',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 22.sp),
                          SizedBox(width: 12.w),
                          Text(
                            'Feeling Blessed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.quotesDetailScreen,
                      arguments: 'Pride Month',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite_outline, color: Colors.white, size: 22.sp),
                          SizedBox(width: 12.w),
                          Text(
                            'Pride Month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.quotesDetailScreen,
                      arguments: 'Self-worth',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star_border, color: Colors.white, size: 22.sp),
                          SizedBox(width: 12.w),
                          Text(
                            'Self-worth',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.quotesDetailScreen,
                      arguments: 'Love',
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.white, size: 22.sp),
                          SizedBox(width: 12.w),
                          Text(
                            'Love',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Text(
              "Health Tips",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.sp,
              ),
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              height: 60.h,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: TextButton(
                  onPressed: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 22.sp),
                          SizedBox(width: 12.w),
                          Text(
                            'Breathe to reset',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18.sp),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}