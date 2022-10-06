import 'package:flutter/material.dart';
import 'package:flutter_yo_ui_kit/ui/chatting_app/controller/chatting_controller.dart';
import 'package:get/get.dart';

class ChatProfilePage extends GetView<ChattingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('ChatProfilePage')),
        body: SafeArea(child: Text('ChatProfileController')));
  }
}
