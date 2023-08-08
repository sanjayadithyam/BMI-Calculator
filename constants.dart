import 'package:flutter/material.dart';

const Color inactive = Color(0x0FF343b60);
const Color active = Color(0x0FF5864a2);
const Color sub = Colors.red;
enum gender {male,female}
int height = 130;
int weight = 40;
int age = 18;
double bmi = 0;
Color bmi_colour = Colors.white;
String bmi_s = "";
String bmi_desc = "";

const TextStyle hetxt = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const TextStyle tiletxt = TextStyle(
  fontSize: 28,
  color: Colors.white,
);

const TextStyle res = TextStyle(
  fontSize: 50,
  color: Colors.white,
  fontWeight: FontWeight.w800,
);

TextStyle des = TextStyle(
  fontSize: 30,
  color: bmi_colour,
  fontWeight: FontWeight.normal,
);

const TextStyle dest = TextStyle(
  fontSize: 23,
  color: Colors.white,
  fontWeight: FontWeight.normal,
);

const TextStyle bmi_t = TextStyle(
  fontSize: 100,
  color: Colors.white,
  fontWeight: FontWeight.w800,
);

