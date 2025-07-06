import 'package:flutter/material.dart';
import 'profile.dart';
import 'quotes_detail.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //hiding back arrow
        title: const Text(
          'Explore',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
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
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 177,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.favorite_border, color: Colors.white, size: 22),
                          SizedBox(width: 9),
                          Text(
                            'My favourites',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 177,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        //
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.notifications_outlined, color: Colors.white, size: 22,),
                          SizedBox(width: 9),
                          Text(
                            'Remind me',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Today's Quotes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    '"Your wellness is an investment,\nnot an expense."\n-Rick Riordan',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Quotes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuotesDetailScreen(

                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 22),
                          SizedBox(width: 12),
                          Text(
                            'Feeling Blessed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuotesDetailScreen(

                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.favorite_outline, color: Colors.white, size: 22),
                          SizedBox(width: 12),
                          Text(
                            'Pride Month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuotesDetailScreen(

                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.star_border, color: Colors.white, size: 22),
                          SizedBox(width: 12),
                          Text(
                            'Self-worth',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuotesDetailScreen(
                          
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.favorite, color: Colors.white, size: 22),
                          SizedBox(width: 12),
                          Text(
                            'Love',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Health Tips",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () {
                    //
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Row(
                        children: [
                          Icon(Icons.wb_sunny_outlined, color: Colors.white, size: 22),
                          SizedBox(width: 12),
                          Text(
                            'Breathe to reset',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white, size: 18),
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