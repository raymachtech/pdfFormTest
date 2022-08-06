import 'package:get/get.dart';

import '../controllers/dynamic_form_builder_controller.dart';

class DynamicFormBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DynamicFormBuilderController>(
      () => DynamicFormBuilderController(),
    );
  }
}
