import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_blig/Configs/configs.dart';
import '../Controllers/CustomBottomBarController.dart';

class CustomFloatingNavigationBar extends StatelessWidget {
  final controller = Get.put(CustomBottomBarController());
  CustomFloatingNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    print(controller.currentIndex.value);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.orange[300],
              borderRadius: BorderRadius.circular(10)),
          child: Obx(
            () {
              return BottomNavigationBar(
                onTap: (value) {
                  controller.changeIndex(value);
                },
                currentIndex: controller.currentIndex.value,
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.black,
                elevation: 0,
                items: [
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(
                        Icons.home,
                        color: appBackgroundColor,
                      ),
                      label: "Home"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.recommend, color: appBackgroundColor),
                      label: "Explore"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.add_circle, color: appBackgroundColor),
                      label: "Add"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.favorite, color: appBackgroundColor),
                      label: "Doctors"),
                  BottomNavigationBarItem(
                      backgroundColor: Colors.transparent,
                      icon: Icon(Icons.person, color: appBackgroundColor),
                      label: "Profile"),
                ],
              );
            },
          )),
    );
  }
}
