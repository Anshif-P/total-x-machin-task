import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/colors.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';

class AddUserButtomWidget extends StatelessWidget {
  final String text;

  final VoidCallback onpressFunction;
  final bool loadingCheck;
  final bool colorCheck;

  const AddUserButtomWidget(
      {super.key,
      required this.onpressFunction,
      required this.text,
      this.loadingCheck = false,
      this.colorCheck = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 38,
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(
                const Size.fromWidth(double.maxFinite)),
            elevation: MaterialStateProperty.all(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
                colorCheck ? Colors.blue : AppColor.lightGreyColor),
          ),
          onPressed: onpressFunction,
          child: loadingCheck
              ? Transform.scale(
                  scale: 0.5,
                  child: const CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Colors.white,
                  ))
              : Text(
                  text,
                  style: colorCheck ? AppText.mediumLight : AppText.mediumdark,
                ),
        ));
  }
}
