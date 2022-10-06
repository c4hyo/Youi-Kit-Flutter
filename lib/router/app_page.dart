import 'package:flutter_yo_ui_kit/ui/chatting_app/controller/chatting_controller.dart';
import 'package:flutter_yo_ui_kit/ui/chatting_app/view/chat_room_page.dart';
import 'package:flutter_yo_ui_kit/ui/chatting_app/view/login_page.dart';
import 'package:flutter_yo_ui_kit/ui/chatting_app/view/profile_page.dart';
import 'package:get/get.dart';

import '../ui/chatting_app/view/chat_list_page.dart';
import '../ui/chatting_app/view/register_page.dart';

part "app_router.dart";

abstract class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: Routes.CHAT_LOGIN,
      page: () => ChatLoginPage(),
      binding: ChattingBinding(),
    ),
    GetPage(
      name: Routes.CHAT_REGISTER,
      page: () => ChatRegisterPage(),
      binding: ChattingBinding(),
    ),
    GetPage(
      name: Routes.CHAT_LIST,
      page: () => ChatListPage(),
      binding: ChattingBinding(),
    ),
    GetPage(
      name: Routes.CHAT_ROOM,
      page: () => ChatRoomPage(),
      binding: ChattingBinding(),
    ),
    GetPage(
      name: Routes.CHAT_PROFILE,
      page: () => ChatProfilePage(),
      binding: ChattingBinding(),
    ),
  ];
}
