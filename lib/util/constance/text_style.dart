import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/colors.dart';

class AppText {
  static TextStyle get xSmall => TextStyle(
        fontSize: 11.5,
        fontWeight: FontWeight.w500,
        fontFamily: 'Poppins',
        color: Colors.grey[500],
      );
  static TextStyle get standerdSize =>
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w600);

  static TextStyle get standerdSizeWhite => const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white);

  static TextStyle get smallDark => const TextStyle(
        fontSize: 12,
        color: AppColor.textPrimary,
      );
  static TextStyle get semiSmallDark => const TextStyle(
        fontSize: 14,
        color: AppColor.textPrimary,
      );
  static TextStyle get smallBlue => const TextStyle(
        fontSize: 12,
        color: Colors.blue,
      );
  static TextStyle get semiSmallBlue => const TextStyle(
        decoration: TextDecoration.underline,
        decorationColor: Colors.blue,
        fontSize: 14,
        color: Colors.blue,
      );
  static TextStyle get smallGrey => const TextStyle(
        fontSize: 12,
        color: AppColor.grey,
      );
  static TextStyle get smallLight => const TextStyle(
        fontSize: 12,
        color: AppColor.textSecondary,
      );
  static TextStyle get mediumdark => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColor.secondaryColor,
      );

  static TextStyle get mediumLight => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      );
  static TextStyle get mediumlightGrey => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.lightGreyColor,
      );
  static TextStyle get mediumGrey => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColor.grey,
      );
  static TextStyle get largeDark => const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: AppColor.secondaryColor,
      );
  static TextStyle get largeLight => const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get xLarge => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColor.textPrimary,
      );

  static TextStyle get toSmallLineThrough => const TextStyle(
      decoration: TextDecoration.lineThrough,
      decorationColor: Colors.grey,
      color: Colors.grey,
      fontSize: 10,
      overflow: TextOverflow.ellipsis);
}
