import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/dice_getx_page.dart';
import 'pages/dice_page.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DicePage(),
      home: diceGetXPage(),
    ),
  );
}
