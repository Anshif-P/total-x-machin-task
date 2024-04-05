import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';
import 'package:total_x_machin_task/util/validation/form_validation.dart';
import 'package:total_x_machin_task/widgets/comman/buttom_widget.dart';
import 'package:total_x_machin_task/widgets/comman/text_feild_widget.dart';

// ignore: must_be_immutable
class ScreenNumberAuthenticaion extends StatelessWidget {
  final TextEditingController numberController = TextEditingController();
  final GlobalKey<FormState> numberAuthFormKey = GlobalKey<FormState>();
  bool loadingCheck = false;
  ScreenNumberAuthenticaion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: numberAuthFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 110,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/OBJECTS.png'),
                        fit: BoxFit.fitHeight)),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Enter Phone Number',
                style: AppText.mediumdark,
              ),
              const SizedBox(
                height: 15,
              ),
              TextFieldWidget(
                isNumber: true,
                controller: numberController,
                hintText: 'Email Phone Number',
                validator: (value) => Validations.emtyValidation(value),
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "By Continuing, I agree to TotalX's ",
                  style: AppText.smallDark,
                ),
                TextSpan(
                  text: "Terms and condition",
                  style: AppText.smallBlue,
                ),
                TextSpan(
                  text: " & ",
                  style: AppText.smallDark,
                ),
                TextSpan(
                  text: "privacy policy",
                  style: AppText.smallBlue,
                )
              ])),
              const SizedBox(
                height: 20,
              ),
              ButtonWidget(
                loadingCheck: false,
                onpressFunction: () => logInFnc(context),
                text: 'Get OTP',
              ),
            ],
          ),
        ),
      ),
    );
  }

  logInFnc(BuildContext context) {
    if (numberAuthFormKey.currentState!.validate()) {
      loadingCheck = true;
    }
  }
}
