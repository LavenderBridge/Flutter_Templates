import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_blig/Configs/configs.dart';
import 'package:web_blig/NavigationBar/Controllers/CustomBottomBarController.dart';
import 'package:web_blig/NavigationBar/Widgets/CustomFloatingNavigationBar.dart';
import 'package:web_blig/ProfilePage/Pages/ProfilePage.dart';
import 'package:web_blig/ProfilePage/Pages/Widgets/AppBarContents.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _currentPageIndexController = Get.put(CustomBottomBarController());

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
      body: Obx(() => [Placeholder(color: Colors.red,), Placeholder(color: Colors.teal), Placeholder(color: Colors.yellow), Placeholder(color: Colors.pink), ProfilePage()][_currentPageIndexController.currentIndex.value],),
      bottomNavigationBar: CustomFloatingNavigationBar(),
    ));
  }
}