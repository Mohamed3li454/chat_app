import 'package:chat_app/helper/consts.dart';
import 'package:chat_app/models/app_theme.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class tabbar_widget extends StatelessWidget {
  const tabbar_widget({
    super.key,
    required this.tabController,
  });

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(8),
      color: kprimerycolor,
      height: 80,
      child: TabBar(
          indicator: ShapeDecoration(
              color: MyTheme.kAccentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          controller: tabController,
          tabs: [
            Tab(
              icon: Text(
                "Chat",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              icon: Text(
                "Status",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              icon: Text(
                "Call",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            )
          ]),
    );
  }
}
