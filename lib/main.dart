import 'package:flutter/material.dart';
import 'package:flutter_yo_ui_kit/chatting_app/view/chat_list_page.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'chatting_app/view/register_page.dart';
// import 'chatting_app/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: ChatListPage(),
    );
  }
}
