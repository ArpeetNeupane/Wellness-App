import 'package:flutter/material.dart';
import 'core/route_config/route_names.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 24),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arpeet Neupane',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'neupanearpeet@gmail.com',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 35),

            Text(
              'MAKE IT YOURS',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 16),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.article, color: Colors.white, size: 24),
                title: Text(
                  'Content preferences',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
              ),
            ),

            SizedBox(height: 35),

            Text(
              'ACCOUNT',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

            SizedBox(height: 16),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.edit_outlined, color: Colors.white, size: 24),
                title: Text(
                  'Theme',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
              ),
            ),

            SizedBox(height: 15),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AuthRouteName.changePassword);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.lens_blur_outlined, color: Colors.white, size: 24),
                  title: Text(
                    'Change Password',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ),
              ),
            ),

            SizedBox(height: 15),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: Icon(Icons.more_horiz, color: Colors.white, size: 24),
                title: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
              ),
            ),

            SizedBox(height: 15),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AuthRouteName.loginScreen,
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: Icon(Icons.logout, color: Colors.white, size: 24),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}