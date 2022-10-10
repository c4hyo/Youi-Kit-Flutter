import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yo_style/colors.dart';
import 'package:yo_style/style/text_style.dart';
import 'package:yo_style/text.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bi.dart';

import '../model/chat_model.dart';

class ChatRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: const [0.1, 0.3, 0.7, 0.9],
                  colors: [
                    YoColors.success.shade100.withOpacity(0.5),
                    YoColors.success.shade200.withOpacity(0.5),
                    YoColors.success.shade200.withOpacity(0.5),
                    YoColors.success.shade100.withOpacity(0.5),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => Get.back(),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/profile_picture/ronaldo.jpg",
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Ronaldo",
                    style: YoTextStyle.style(
                      textColor: YoColors.neutral,
                      textType: TextType.semibold,
                      textSize: TextSize.large,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: YoColors.success.shade100.withOpacity(.25),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: chatRoomList.length,
                  itemBuilder: (_, index) {
                    if (index == 0) {
                      return Column(
                        crossAxisAlignment: chatRoomList[index].isSender!
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          const Center(
                            child: Chip(
                              label: Text("Today"),
                            ),
                          ),
                          bubbleChat(chatRoomModel: chatRoomList[index]),
                        ],
                      );
                    } else {
                      return bubbleChat(chatRoomModel: chatRoomList[index]);
                    }
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
              width: double.infinity,
              color: YoColors.success.shade100.withOpacity(0.5),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      cursorColor: YoColors.success.shade800,
                      decoration: InputDecoration(
                        hintText: "Type Here",
                        fillColor: YoColors.success.shade200.withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Iconify(Bi.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget bubbleChat({ChatRoomModel? chatRoomModel}) {
  return Padding(
    padding: const EdgeInsets.only(top: 12),
    child: Column(
      crossAxisAlignment: chatRoomModel!.isSender!
          ? CrossAxisAlignment.end
          : CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: chatRoomModel.isSender!
                ? YoColors.success.shade200.withOpacity(0.5)
                : YoColors.info.shade200.withOpacity(0.75),
            borderRadius: chatRoomModel.isSender!
                ? const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  )
                : const BorderRadius.only(
                    bottomRight: Radius.circular(8),
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
          ),
          child: Text(
            "${chatRoomModel.text}",
            style: YoTextStyle.style(
              textColor: YoColors.neutral,
              textSize: TextSize.base,
              textType: TextType.regular,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "${chatRoomModel.createdAt}",
            style: YoTextStyle.style(
              textColor: YoColors.neutral.shade200,
              textSize: TextSize.xs,
            ),
          ),
        ),
      ],
    ),
  );
}
