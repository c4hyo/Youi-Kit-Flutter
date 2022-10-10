// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_yo_ui_kit/router/app_page.dart';
import 'package:get/get.dart';
import 'package:yo_style/colors.dart';

import '../model/chat_model.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0f0c29),
                    Color(0xff302b63),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Get.toNamed(Routes.CHAT_PROFILE),
                        child: Hero(
                          tag: 1,
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: YoColors.neutral.shade50,
                            backgroundImage:
                                const AssetImage("assets/logo.png"),
                          ),
                        ),
                      ),
                      Text(
                        "Message",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: YoColors.neutral.shade50,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: YoColors.neutral.shade50,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: YoColors.neutral.shade50,
                      hintText: "Search People",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: YoColors.neutral.shade50,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: chatList.length,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () => Get.toNamed(Routes.CHAT_ROOM),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                        child: Container(
                          height: 52,
                          width: double.infinity,
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 26,
                                backgroundColor: YoColors.neutral.shade100,
                                backgroundImage:
                                    AssetImage(chatList[index].imageUrl!),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${chatList[index].name}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: YoColors.neutral.shade500,
                                      ),
                                    ),
                                    Text(
                                      "${chatList[index].chat}",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: YoColors.neutral.shade300,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "${chatList[index].time}",
                                    style: const TextStyle(
                                      color: YoColors.neutral,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Visibility(
                                    visible: chatList[index].count! > 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: YoColors.primary,
                                      ),
                                      child: Text(
                                        "${chatList[index].count}",
                                        style: TextStyle(
                                          color: YoColors.neutral.shade50,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
