import 'package:get/get.dart';

import 'package:example_get_cli/app/modules/profile/controllers/app_controller.dart';

import '../controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(
      () => AppController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
