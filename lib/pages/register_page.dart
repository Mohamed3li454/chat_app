import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/textfild_widget.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class register_page extends StatelessWidget {
  const register_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset("assets/images/unnamed.png", height: 190),
            const Text(
              "Cool Chat",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 32),
            ),
            const Spacer(
              flex: 2,
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 7),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 32, fontFamily: "Pacifico"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const textfail_widget(
              label: "Enter Your Email",
              hinttext: "Email",
            ),
            const SizedBox(
              height: 10,
            ),
            const textfail_widget(
              label: "Enter Your Password",
              hinttext: "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            const custom_button(text: "Sign up"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account "),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    " Login",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
