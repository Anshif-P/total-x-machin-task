import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/colors.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';
import 'package:total_x_machin_task/widgets/comman/buttom_widget.dart';

class ScreenOtpVarification extends StatefulWidget {
  const ScreenOtpVarification({Key? key}) : super(key: key);

  @override
  State<ScreenOtpVarification> createState() => _ScreenOtpVarificationState();
}

class _ScreenOtpVarificationState extends State<ScreenOtpVarification> {
  final List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());
  final List<TextEditingController> _controllers =
      List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 160,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/image/Group.png'),
                      fit: BoxFit.fitHeight)),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'OTP Verification',
              style: AppText.mediumdark,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter the verification code we just send to your number +91 ********21.',
              style: AppText.semiSmallDark,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: List.generate(
                4,
                (index) => Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(
                      right: 10), // Adjust the horizontal margin
                  child: SizedBox(
                    width: 60,
                    height: 60,
                    child: TextFormField(
                      controller: _controllers[index],
                      focusNode: _focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 24),
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          if (index < 3) {
                            _focusNodes[index + 1].requestFocus();
                          } else {
                            // All OTP fields are filled
                            for (var controller in _controllers) {
                              if (controller.text.isEmpty) {
                                _focusNodes[_controllers.indexOf(controller)]
                                    .requestFocus();
                                break;
                              }
                            }
                          }
                        } else if (index > 0) {
                          _focusNodes[index - 1].requestFocus();
                        }
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xFFD1D1D1)),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: AppColor.primaryColor),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: const Text(
                '59 Sec',
                style: TextStyle(color: Colors.red),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "Don't Get OTP? ", style: AppText.semiSmallDark),
                TextSpan(text: 'Resend', style: AppText.semiSmallBlue)
              ])),
            ),
            const SizedBox(
              height: 15,
            ),
            ButtonWidget(onpressFunction: () {}, text: 'Verify')
          ],
        ),
      ),
    );
  }
}
