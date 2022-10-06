// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:yo_style/yo_style.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ant_design.dart';

class ChatRegisterPage extends StatelessWidget {
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
                  "Register",
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
                  "Create new account",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: YoColors.neutral.shade200,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    Container(
                      height: 64,
                      width: 64,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: const [
                            Color(0xFF0f0c29),
                            Color(0xff302b63),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Image.network(
                        "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY",
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: YoColors.danger.shade500,
                          ),
                        ),
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
                      "Fullname",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: YoColors.neutral.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade400,
                      ),
                      cursorColor: YoColors.neutral,
                      decoration: InputDecoration(
                        suffix: Iconify(AntDesign.user_outline),
                        hintText: "example",
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
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: YoColors.neutral.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
                        suffix: Iconify(AntDesign.mail_outline),
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
                      height: 4,
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
                        suffix: Iconify(AntDesign
                            .eye_twotone), //Iconify(AntDesign.eye_invisible_outlined)
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
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: YoColors.neutral.shade500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
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
                        suffix: Iconify(AntDesign.eye_twotone),
                        hintText: "Confirm Your Password",
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
                InkWell(
                  hoverColor: Colors.red,
                  onTap: () {
                    print("Register");
                  },
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
                        "Register",
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
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "By sign up, you agree with our ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade200,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          "Term of Service",
                          style: TextStyle(
                            fontSize: 14,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account, ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: YoColors.neutral.shade200,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                        child: Text(
                          "Login",
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
