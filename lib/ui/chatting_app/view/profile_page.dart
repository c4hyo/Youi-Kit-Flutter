// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yo_style/colors.dart';
import 'package:yo_style/style/text_style.dart';
import 'package:yo_style/text.dart';

import 'package:flutter_yo_ui_kit/ui/chatting_app/controller/chatting_controller.dart';

class ChatProfilePage extends GetView<ChattingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: Get.size.height * 0.4,
              child: Stack(
                children: [
                  Hero(
                    tag: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/logo.png"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: YoColors.primary.shade50,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: YoColors.primary.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.image_outlined,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        color: YoColors.primary.shade50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: ListView(
                  children: [
                    Text(
                      "Account",
                      style: YoTextStyle.style(
                        textColor: YoColors.primary,
                        textSize: TextSize.large,
                        textType: TextType.semibold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Yo Dev App",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral.shade300,
                            textSize: TextSize.base,
                            textType: TextType.bold,
                          ),
                        ),
                        Text(
                          "Fullname",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral,
                            textSize: TextSize.xs,
                            textType: TextType.regular,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "yodevapp",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral.shade300,
                            textSize: TextSize.base,
                            textType: TextType.bold,
                          ),
                        ),
                        Text(
                          "username",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral,
                            textSize: TextSize.xs,
                            textType: TextType.regular,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "example@mail.com",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral.shade300,
                            textSize: TextSize.base,
                            textType: TextType.bold,
                          ),
                        ),
                        Text(
                          "email",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral,
                            textSize: TextSize.xs,
                            textType: TextType.regular,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "+6222222222222",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral.shade300,
                            textSize: TextSize.base,
                            textType: TextType.bold,
                          ),
                        ),
                        Text(
                          "number phone",
                          style: YoTextStyle.style(
                            textColor: YoColors.neutral,
                            textSize: TextSize.xs,
                            textType: TextType.regular,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Settings",
                      style: YoTextStyle.style(
                        textColor: YoColors.primary,
                        textSize: TextSize.large,
                        textType: TextType.semibold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    CardSettingsProfile(
                      icon: Icons.notifications_outlined,
                      title: "Notifications",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardSettingsProfile(
                      icon: Icons.block_outlined,
                      title: "Blocker Accounts",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardSettingsProfile(
                      icon: Icons.person_pin_circle_outlined,
                      title: "Privacy Policy",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CardSettingsProfile(
                      icon: Icons.help_outline_outlined,
                      title: "Support",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: YoColors.primary.shade100.withOpacity(.25),
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 16,
                          ),
                          Icon(
                            Icons.exit_to_app_outlined,
                            color: YoColors.danger,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Text(
                              "Sign Out",
                              style: TextStyle(
                                color: YoColors.danger,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardSettingsProfile extends StatelessWidget {
  final String? title;
  final IconData icon;
  const CardSettingsProfile({
    Key? key,
    this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: YoColors.primary.shade100.withOpacity(.25),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 16,
          ),
          Icon(icon),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Text(title!),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_circle_right_outlined),
          ),
          SizedBox(
            width: 16,
          ),
        ],
      ),
    );
  }
}
