import 'package:crewmach_training_module/app/modules/dynamic_form_builder/api_calls/get_dynamic_widgets_list.dart';
import 'package:crewmach_training_module/app/modules/dynamic_form_builder/models/model_dynamic_form_builder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:crewmach_training_module/app/providers/app_base_client.dart';
import 'package:crewmach_training_module/app/providers/app_base_controller.dart';
import '../../../providers/app_api_endpoint.dart';

class DynamicFormBuilderController extends GetxController
    with AppBaseController, StateMixin<List<dynamic>> {
  //TODO: Implement DynamicFormBuilderController
  var modelDynamicFormBuilderInfo =
      ModelDynamicFormBuilder().dynamicWidgetsList.obs;
  final count = 0.obs;
  @override
  void onInit() {
    // apiFuture_DynamicFormWidgets(form: 'Testing');
    Provider().getFormWidgetsList().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

//=========================================================================================
  Future<dynamic> apiFuture_DynamicFormWidgets({
    required String form,
    bool loading = false,
  }) async {
    //Show Native Circular Progress Indicator
    if (loading == true) {
      showLoading(const Text('Fetching Dynamic Form Widgets...'));
    }

    // Setting Up Body
    var requestBody = ''; // = '?form=$form';

    // Calling Core API
    var response = await AppBaseClient()
        .get(AppAPIEndPoints.BASE_URL, AppAPIEndPoints.GET_DYNAMIC_WIDGETS,
            requestBody)
        .catchError(errorHandler);

    // Hide Native Circular Progress Indicator
    if (loading == true) hideLoading();

    // Validating Response, if not valid exit from the functionwhen
    if (response == null) return;

    // Return Response with Model
    var dynamicInfoDetails = ModelDynamicFormBuilder.fromJson(response);
    modelDynamicFormBuilderInfo.value = dynamicInfoDetails.dynamicWidgetsList;
    return dynamicInfoDetails;
  }
}
