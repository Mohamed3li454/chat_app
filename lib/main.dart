import 'package:chat_app/pages/login_page.dart';
import 'package:chat_app/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const chat_app());
}

// ignore: camel_case_types
class chat_app extends StatelessWidget {
  const chat_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "registerpage": (context) => const register_page(),
        "login_page": (context) => const login_page()
      },
      initialRoute: "login_page",
    );
  }
}
