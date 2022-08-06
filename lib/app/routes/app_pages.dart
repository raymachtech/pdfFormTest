import 'package:get/get.dart';

import '../modules/dynamic_form_builder/bindings/dynamic_form_builder_binding.dart';
import '../modules/dynamic_form_builder/views/dynamic_form_builder_view.dart';
import '../modules/dynamic_form_builder/views/webview.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => WebViewClass(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DYNAMIC_FORM_BUILDER,
      page: () => DynamicFormBuilderView(),
      binding: DynamicFormBuilderBinding(),
    ),
  ];
}
