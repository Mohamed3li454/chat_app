import 'package:chat_app/helper/consts.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class bubble_chat extends StatelessWidget {
  const bubble_chat({
    super.key,
    required this.message,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 16),
        margin: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: kprimerycolor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
        ),
        child: Text(
          message.message,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class bubble_chat_frind extends StatelessWidget {
  const bubble_chat_frind({
    super.key,
    required this.message,
  });
  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 16),
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Color(0xff8ee8fe),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: Text(
          message.message,
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
