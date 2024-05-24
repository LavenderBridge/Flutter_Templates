import 'package:flutter/material.dart';
import 'package:web_blig/Configs/configs.dart';

class NavigatePage extends StatelessWidget {
  const NavigatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: sliderBackgroundColor,
        ),
        backgroundColor: appBackgroundColor,
        body: const Placeholder());
  }
}
