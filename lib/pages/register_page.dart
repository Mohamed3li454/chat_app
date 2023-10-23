import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/textfild_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: camel_case_types, must_be_immutable
class register_page extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

// ignore: camel_case_types
class _register_pageState extends State<register_page> {
  String? email;

  String? password;

  bool isloading = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formkey,
            child: ListView(
              children: [
                const SizedBox(height: 75),
                Image.asset("assets/images/unnamed.png", height: 190),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cool Chat",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 32),
                    ),
                  ],
                ),
                const SizedBox(height: 75),
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
                textfail_widget(
                  onchanged: (data) {
                    email = data;
                  },
                  label: "Enter Your Email",
                  hinttext: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                textfail_widget(
                  onchanged: (data) {
                    password = data;
                  },
                  label: "Enter Your Password",
                  hinttext: "Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                custom_button(
                  text: "Sign up",
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});
                      try {
                        await registerUser();
                        // ignore: use_build_context_synchronously
                        showsnackbar(context, 'successfuly');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          // ignore: use_build_context_synchronously
                          showsnackbar(
                              context, "The password provided is too weak.");
                        } else if (e.code == 'email-already-in-use') {
                          // ignore: use_build_context_synchronously
                          showsnackbar(context,
                              'The account already exists for that email.');
                        }
                      }
                      isloading = false;
                      setState(() {});
                    }
                  },
                ),
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
                const SizedBox(height: 75),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showsnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  Future<void> registerUser() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
