import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/textfild_widget.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class login_page extends StatelessWidget {
  const login_page({super.key});

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
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Login",
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
            const custom_button(text: "Login"),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't have an account ?"),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "registerpage");
                  },
                  child: const Text(
                    " register",
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
