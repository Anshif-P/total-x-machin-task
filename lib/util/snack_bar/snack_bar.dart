import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';

class CustomSnackBar {
  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: AppText.mediumLight,
        ),
      ),
    );
  }
}
