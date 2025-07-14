import 'package:flutter/material.dart';
import 'package:wellness/core/route_config/route_config.dart';
import 'package:wellness/core/route_config/route_names.dart';

Set<String> likedQuotes = {};

void main() {
  runApp(const WellnessApp());
}

class WellnessApp extends StatelessWidget {
  const WellnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wellness App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.black, //making the background of all Scaffold widgets black 
        colorScheme: const ColorScheme.dark(
          secondary: Color(0xFF262626), //secondary is used by components like FloatingActionButton, Switch, etc.
        ),
        iconButtonTheme: IconButtonThemeData(
          style: ButtonStyle(
            iconColor: WidgetStateProperty.all(Colors.white), //making all icons inside buttons white
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        ),
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Colors.black,
          elevation: 3,
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true, //input field with bg color. If false, background is transparent
          fillColor: Color(0xFF1E1E1E),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          hintStyle: TextStyle(color: Colors.grey),
        ),
        timePickerTheme: const TimePickerThemeData( //dialog widget that lets the user pick a time
          backgroundColor: Color(0xFF1E1E1E),
          hourMinuteTextColor: Color(0xFF1E1E1E),
          hourMinuteColor: Colors.grey,
          dayPeriodTextColor: Colors.white70,
          dialBackgroundColor: Colors.black,
          dialHandColor: Colors.white,
          dialTextColor: Colors.white,
          entryModeIconColor: Colors.white,
          helpTextStyle: TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        hoverColor: Colors.transparent,
      ),
      onGenerateRoute: RouteConfig.generateRoute,
      initialRoute: RoutesName.defaultScreen,
    );
  }
}