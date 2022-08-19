import 'package:get/get.dart';

import '../controllers/properties_details_controller.dart';

class PropertiesDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PropertiesDetailsController>(
      () => PropertiesDetailsController(),
    );
  }
}
