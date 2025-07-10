import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/route_config/route_names.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 24.sp),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 26.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(width: 16.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arpeet Neupane',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'neupanearpeet@gmail.com',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 35.h),

            Text(
              'MAKE IT YOURS',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 16.h),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: ListTile(
                leading: Icon(Icons.article, color: Colors.white, size: 24.sp),
                title: Text(
                  'Content preferences',
                  style: TextStyle(color: Colors.white, fontSize: 19.sp),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp),
              ),
            ),

            SizedBox(height: 35.h),

            Text(
              'ACCOUNT',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 16.h),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: ListTile(
                leading: Icon(Icons.edit_outlined, color: Colors.white, size: 24.sp),
                title: Text(
                  'Theme',
                  style: TextStyle(color: Colors.white, fontSize: 19.sp),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp),
              ),
            ),

            SizedBox(height: 15.h),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: ListTile(
                leading: Icon(Icons.more_horiz, color: Colors.white, size: 24.sp),
                title: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.white, fontSize: 19.sp),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp),
              ),
            ),

            SizedBox(height: 15.h),

            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  AuthRouteName.loginScreen,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white, size: 24.sp),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 19.sp),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}