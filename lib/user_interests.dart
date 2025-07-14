import 'package:flutter/material.dart';
import 'package:wellness/core/route_config/route_names.dart';

class UserInterestsScreen extends StatefulWidget {
  const UserInterestsScreen({super.key});

  @override
  State<UserInterestsScreen> createState() => _UserInterestsScreenState();
}

class _UserInterestsScreenState extends State<UserInterestsScreen> {
  final List<String> allInterests = [
    'Hard Times', 'Working Out', 'Productivity', 'Self-esteem', 'Achieving Goals', 'Inspiration',
    'Letting Go', 'Love', 'Relationships', 'Faith & Spirituality', 'Positive Thinking', 'Stress & Anxiety'
  ];
  final Set<String> selectedInterests = {};

  void toggleInterest(String interest) {
    setState(() {
      if (selectedInterests.contains(interest)) {
        selectedInterests.remove(interest);
      } else {
        selectedInterests.add(interest);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: 60),
              Text(
                'Select all topics that\nmotivates you.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                child: GridView.count(
                  crossAxisCount: 2, // 2 columns per row
                  mainAxisSpacing: 16, // vertical spacing between rows
                  crossAxisSpacing: 16, // horizontal spacing between columns
                  childAspectRatio: 3, // width to height ratio of each button
                  shrinkWrap: true, // grid takes only needed vertical space
                  physics: const NeverScrollableScrollPhysics(), // disable scroll inside column
                  children: allInterests.map((interest) {
                    final isSelected = selectedInterests.contains(interest);
                    return TextButton(
                      onPressed: () => toggleInterest(interest),
                      style: TextButton.styleFrom(
                        backgroundColor: isSelected ? Colors.white : Colors.grey[900],
                        foregroundColor: isSelected ? Colors.black : Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20), // padding inside buttons
                      ),
                      child: Text(
                        interest,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 200,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context, RoutesName.dashboardScreen,
                        arguments: 'Feeling Blessed',
                      );
                    },
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}