import 'package:get/get.dart';

class ChattingController extends GetxController {}

class ChattingBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChattingController>(() => ChattingController());
  }
}
