import 'package:flutter/material.dart';
import 'package:wellness/core/route_config/route_names.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //hiding back arrow
        title: Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.profileScreen,
                );
              },
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(20),
              ),
              height: 150,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.group_outlined, color: const Color.fromARGB(255, 255, 255, 255), size: 65),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Total Users',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 23
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '156',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 132,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Total Category',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '100',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RoutesName.addCategoryScreen
                              );
                            },
                            icon: Icon(Icons.add)
                          ),
                        ),
                        Text(
                          'Add new',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                          ),
                        )
                      ]
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 132,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Total Quotes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '200',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RoutesName.addQuotesScreen
                              );
                            },
                            icon: Icon(Icons.add)
                          ),
                        ),
                        Text(
                          'Add new',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                          ),
                        )
                      ]
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(15),
              ),
              height: 132,
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Total Health Tips',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '50',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 33,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                RoutesName.addHealthTipsScreen
                              );
                            },
                            icon: Icon(Icons.add)
                          ),
                        ),
                        Text(
                          'Add new',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15
                          ),
                        )
                      ]
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}