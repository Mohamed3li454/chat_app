// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class custom_button extends StatelessWidget {
  const custom_button({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      height: 60,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
