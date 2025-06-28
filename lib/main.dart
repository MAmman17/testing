import 'package:flutter/material.dart';
import 'package:testing/splash%20screen/forget.dart';
import 'package:testing/splash%20screen/login.dart';
import 'package:testing/splash%20screen/sign%20up.dart';
import 'package:testing/splash%20screen/splash.dart';
import 'package:testing/walpaper/about%20us.dart';
import 'package:testing/walpaper/contact%20us.dart';
import 'package:testing/walpaper/dashboard.dart';
import 'package:testing/walpaper/main%20profile.dart';
import 'package:testing/walpaper/privacy%20policy.dart';
import 'package:testing/walpaper/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      home: SplashApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

