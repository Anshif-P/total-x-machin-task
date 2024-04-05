import 'package:flutter/material.dart';
import 'package:total_x_machin_task/view/screen_home.dart';
import 'package:total_x_machin_task/view/screen_mobile_authentication.dart';
import 'package:total_x_machin_task/view/screen_otp_verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenHome(),
    );
  }
}
