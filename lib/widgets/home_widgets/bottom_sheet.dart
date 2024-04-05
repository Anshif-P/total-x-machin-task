import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';
import 'package:total_x_machin_task/util/validation/form_validation.dart';
import 'package:total_x_machin_task/widgets/comman/text_feild_widget.dart';
import 'package:total_x_machin_task/widgets/home_widgets/add_user_buttom_widget.dart';

void bottomSheetFnc(BuildContext context, screenHeight) {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        // height: screenHeight * 0.6,
        width: double.maxFinite,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Add A New User',
                style: AppText.mediumdark,
              ),
              Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.shade200,
                            Colors.blue.shade700
                          ], // Your gradient colors
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: const Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                // Positioned(
                //   top: 30,
                //   bottom: 0,
                //   right: 140,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       // Container(
                //       //   alignment: Alignment.center,
                //       //   height: 30,
                //       //   width: 90,
                //       //   decoration: const BoxDecoration(
                //       //       color: Colors.yellow,
                //       //       borderRadius: BorderRadius.only(
                //       //           bottomLeft: Radius.circular(100),
                //       //           bottomRight: Radius.circular(100))),
                //       // ),
                //       HalfDisc()
                //     ],
                //   ),
                // )
              ]),
              Text(
                'Name',
                style: AppText.mediumGrey,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                hintText: '',
                controller: nameController,
                validator: (value) => Validations.emtyValidation(value),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Age',
                style: AppText.mediumGrey,
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                hintText: '',
                controller: ageController,
                validator: (value) => Validations.emtyValidation(value),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 1,
                      child: AddUserButtomWidget(
                        onpressFunction: () => Navigator.of(context).pop(),
                        text: 'Cancel',
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: AddUserButtomWidget(
                        colorCheck: true,
                        onpressFunction: () => Navigator.of(context).pop(),
                        text: 'Save',
                      )),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
