// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_yo_ui_kit/router/app_page.dart';
import 'package:get/get.dart';
import 'package:yo_style/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';

class ChatLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: YoColors.neutral,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Login into your account",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: YoColors.neutral.shade200,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: YoColors.neutral.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Iconify(Logos.google_icon), // widget,
                      ),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    InkWell(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: YoColors.neutral.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Iconify(Logos.facebook),
                      ),
                    ),
                    SizedBox(
                      width: 48,
                    ),
                    InkWell(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                          color: YoColors.neutral.shade50,
                          shape: BoxShape.circle,
                        ),
                        child: Iconify(Logos.apple),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1.25,
                        color: YoColors.neutral.shade100,
                      ),
                    ),
                    Text(
                      "  Or with email and password  ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade200,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 1.25,
                        color: YoColors.neutral.shade100,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 48,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: YoColors.neutral.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade400,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      cursorColor: YoColors.neutral,
                      decoration: InputDecoration(
                        hintText: "example@email.com",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: YoColors.neutral.shade100,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.neutral.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.neutral.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.danger.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: YoColors.neutral.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade400,
                      ),
                      obscureText: true,
                      cursorColor: YoColors.neutral,
                      decoration: InputDecoration(
                        hintText: "Your Password",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: YoColors.neutral.shade100,
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.neutral.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.neutral.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: YoColors.danger.shade500,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: YoColors.neutral.shade500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                InkWell(
                  onTap: () => Get.toNamed(Routes.CHAT_LIST),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(0, 18, 0, 18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: const [
                          Color(0xFF0f0c29),
                          Color(0xff302b63),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: YoColors.neutral.shade50,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade200,
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.CHAT_REGISTER),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          "Register here",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: YoColors.neutral.shade500,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
