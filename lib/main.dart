/*
 * @Author: clingxin
 * @Date: 2021-02-05 18:01:30
 * @LastEditors: clingxin
 * @LastEditTime: 2021-04-19 20:23:01
 * @FilePath: /flutter-responsive-email-ui/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'package:outlook/screens/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
