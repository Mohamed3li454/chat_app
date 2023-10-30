import 'package:chat_app/helper/consts.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:chat_app/widgets/bubble_chat.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: camel_case_types, must_be_immutable
class chat_page extends StatelessWidget {
  CollectionReference message =
      FirebaseFirestore.instance.collection('message');
  TextEditingController controller = TextEditingController();
  final ScrollController _scrollcontroller = ScrollController();
  chat_page({super.key});

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
        stream: message.orderBy("createdat", descending: true).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Message> messagelist = [];
            for (int i = 0; i < snapshot.data!.docs.length; i++) {
              messagelist.add(
                Message.fromJson(
                  snapshot.data!.docs[i],
                ),
              );
            }
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/unnamed.png",
                      height: 60,
                    ),
                    const Text(
                      "",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    )
                  ],
                ),
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      controller: _scrollcontroller,
                      itemCount: messagelist.length,
                      itemBuilder: (context, index) {
                        return messagelist[index].id == email
                            ? bubble_chat(
                                message: messagelist[index],
                              )
                            : bubble_chat_frind(message: messagelist[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextField(
                      controller: controller,
                      onSubmitted: (data) {
                        message.add({
                          "message": data,
                          "createdat": DateTime.now(),
                          "id": email,
                        });
                        controller.clear();
                        _scrollcontroller.animateTo(
                          0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      decoration: InputDecoration(
                        label: const Text("Send Message"),
                        suffixIcon: const Icon(
                          Icons.send,
                          color: kprimerycolor,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: kprimerycolor),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: kprimerycolor),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Text("Loading...");
          }
        });
  }
}
