import 'package:flutter/material.dart';
import 'package:web_blig/ProfilePage/Configs/configs.dart';
import 'package:web_blig/ProfilePage/Pages/ProfilePage.dart';
import 'package:web_blig/ProfilePage/Pages/Widgets/AppBarContents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: AppBarContents(),
        backgroundColor: appBackgroundColor,
        elevation: 5,
      ),
      backgroundColor: appBackgroundColor,
      body: ProfilePage(),
    ));
  }
}