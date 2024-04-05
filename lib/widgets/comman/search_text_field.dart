import 'package:flutter/material.dart';
import 'package:total_x_machin_task/util/constance/colors.dart';
import 'package:total_x_machin_task/util/constance/text_style.dart';

// ignore: must_be_immutable
class SearchTextFieldWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const SearchTextFieldWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: TextFormField(
          onEditingComplete: () {
            FocusScope.of(context).nextFocus();
          },
          controller: widget.controller,
          decoration: InputDecoration(
            isDense: true,
            constraints: const BoxConstraints(maxHeight: 70, minHeight: 35),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(30.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColor.lightGreyColor),
              borderRadius: BorderRadius.circular(30.0),
            ),
            prefixIcon: const Icon(
              Icons.search,
              size: 25,
            ),
            contentPadding: const EdgeInsets.only(bottom: 20),
            alignLabelWithHint: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: AppColor.lightGreyColor,
            ),
          ),
        ));
  }
}
