import 'package:flutter/material.dart';

// ignore: camel_case_types
class textfail_widget extends StatelessWidget {
  const textfail_widget(
      {super.key, required this.hinttext, required this.label});
  // ignore: prefer_typing_uninitialized_variables
  final String hinttext;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(label),
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
