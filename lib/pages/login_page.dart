import 'package:chat_app/helper/snack_bar.dart';
import 'package:chat_app/helper/socal_sign_up.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/textfild_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  String? email;

  String? password;

  bool isloading = false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(colors: [
            //     Color.fromARGB(195, 0, 0, 0),
            //     kprimerycolor,
            //     Colors.grey
            //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            // ),
            child: ListView(
              children: [
                const SizedBox(height: 75),
                SvgPicture.asset("assets/icons/signup.svg", height: 250),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cool Chat",
                      style: TextStyle(fontFamily: "Pacifico", fontSize: 32),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
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
                  obscure: true,
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
                  text: "Login",
                  ontap: () async {
                    if (formkey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});
                      try {
                        await loginUser();
                        // ignore: use_build_context_synchronously
                        Navigator.pushNamed(context, "chat_page",
                            arguments: email);
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
                const SocalSignUp(),
                const SizedBox(height: 75),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    // ignore: unused_local_variable
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
