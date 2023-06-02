// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColor {
  // routes
  static const inputtextColor = Color(0xFF262628);
  static const inputfieldColor = Color(0xFFF2F2F2);
  static const normaltextColor = Color(0xFF1E293B);
  static const graytextColor = Color(0xFF334155);
  static const gray200Color = Color(0xFFE2E8F0);
  static const tealColors = Color(0xFF2DD4BF);
  static const errorColors = Color(0xFFFD5D76);
  static const primaryColor = Color(0xFF2563EB);
  static const secondaryColor = Color(0xFF5D3FD3);
  static const disacbleColor = Color(0xFF64748B);
  static const pinfieldColor = Color(0xFFF7F4FF);
  static const blackColor = Color(0xFF2D2D2D);
  static const kwhiteColor = Color(0xFFFFFFFF);
  static const backgroundColor = Color(0xFFEFF6FF);

  static const kstarIcon = Color(0xFFFACD5D);
  static const kgreen = Color(0xFF00FF0C);

  static showErrorSnackBar(String e) {
    Get.rawSnackbar(
      snackStyle: SnackStyle.GROUNDED,
      backgroundColor: AppColor.primaryColor,
      borderRadius: 5,
      messageText: Text(
        e,
        maxLines: 30,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      isDismissible: true,
      forwardAnimationCurve: Curves.easeInOut,
      barBlur: 20,
      snackPosition: SnackPosition.TOP,
      margin: EdgeInsets.zero,
    );
  }
}
