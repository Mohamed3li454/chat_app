// ignore: camel_case_types
import 'package:chat_app/helper/consts.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class custom_button extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  custom_button({this.text, this.ontap});
  String? text;
  VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: kprimerycolor),
        height: 60,
        width: double.infinity,
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
