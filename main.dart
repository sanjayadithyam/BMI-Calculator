import 'package:flutter/material.dart';
import 'package:bmi/inputpg.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0x0FF054379),
        scaffoldBackgroundColor: Color(0x0FF12003e),
        appBarTheme: AppBarTheme(
          color: Color(0x0FF032039),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ) ,
        ),
      ),
      home: MyApp(),
  ));
}


