// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSnackBar {
  final String title;
  final String massage;
  AppSnackBar({
    required this.title,
    required this.massage,
  });

  void errorSnackBar() {
    Get.snackbar(title, massage,backgroundColor: Colors.red,colorText: Colors.white);
  }

  void normalSnackBar() {
    Get.snackbar(title, massage);
  }
}
