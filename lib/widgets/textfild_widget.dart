import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class textfail_widget extends StatelessWidget {
  textfail_widget({super.key, this.hinttext, this.label, this.onchanged});
  String? hinttext;
  String? label;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: body_might_complete_normally_nullable
      validator: (data) {
        if (data!.isEmpty) {
          return "faild is requierd";
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(label!),
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
