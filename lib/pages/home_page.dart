import 'package:chat_app/helper/consts.dart';
import 'package:chat_app/models/app_theme.dart';
import 'package:chat_app/models/messages_model.dart';
import 'package:chat_app/widgets/tabbar_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.black),
        ),
        title: const Center(
          child: Text(
            'Cool Chat',
            style: TextStyle(color: Colors.black),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.black),
            onPressed: () {},
          )
        ],
        elevation: 0,
      ),
      backgroundColor: kprimerycolor,
      body: Column(
        children: [
          tabbar_widget(tabController: tabController),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          children: [
                            Text(
                              "Recent Chat",
                              style: MyTheme.heading2,
                            ),
                            Spacer(),
                            Icon(
                              Icons.search,
                              color: kprimerycolor,
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: recentChats.length,
                        itemBuilder: (context, index) {
                          final recentchat = recentChats[index];
                          return Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 26,
                                  backgroundImage:
                                      AssetImage(recentchat.avatar!),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      recentchat.sender!.name!,
                                      style: MyTheme.heading2
                                          .copyWith(fontSize: 20),
                                    ),
                                    Text(
                                      recentchat.text!,
                                      style: MyTheme.bodyText1,
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 7,
                                      backgroundColor: MyTheme.kUnreadChatBG,
                                      child: Text(
                                        recentchat.unreadCount.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      recentchat.time!,
                                      style: MyTheme.bodyTextTime,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  Center(
                    child: Text("Status"),
                  ),
                  Center(
                    child: Text("Call"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
