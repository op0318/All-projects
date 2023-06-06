import 'package:attendance_tracking_system/PAGES/empidpage.dart';
import 'package:attendance_tracking_system/PAGES/leaveapply.dart';
import 'package:attendance_tracking_system/PAGES/otppage.dart';
import 'package:attendance_tracking_system/PAGES/testpage.dart';
import 'package:flutter/material.dart';

import 'PAGES/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      //home: testdropdown()
      home: testleave(
      ),
    );
  }
}

