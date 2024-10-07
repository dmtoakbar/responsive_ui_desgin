import 'package:flutter/material.dart';
import 'package:responsive_ui_design/colors.dart';
import 'package:responsive_ui_design/responsive/responsive.dart';
import 'package:responsive_ui_design/screens/mobile_screen_layout.dart';
import 'package:responsive_ui_design/screens/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: backgroundColor
      ),
home: ResponsiveLayout(
  mobileScreenLayout: MobileScreenLayout(),
  webScreenLayout: WebScreenLayout(),)
    );
  }
}

