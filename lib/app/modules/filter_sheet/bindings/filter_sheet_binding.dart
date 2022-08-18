import 'package:get/get.dart';

import '../controllers/filter_sheet_controller.dart';

class FilterSheetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterSheetController>(
      () => FilterSheetController(),
    );
  }
}
