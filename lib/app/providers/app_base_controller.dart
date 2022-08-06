import 'package:crewmach_training_module/app/helpers/dialog_helper.dart';
import 'package:crewmach_training_module/app/providers/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBaseController {
  void errorHandler(error) {
    hideLoading();
    if (error is BadRequestException) {
      //Show Dialog
      var message = error.message;
      DialogHelper.showErrorDialog(dialogDescription: message ?? '');
    } else if (error is FetchDataException) {
      var message = error.message;
      DialogHelper.showErrorDialog(dialogDescription: message ?? '');
    } else if (error is RequestTimeOutException) {
      DialogHelper.showErrorDialog(
          dialogDescription:
              'Its taking longer than expected, kindly intimate your service provider - TEA265.');
      Get.back();
    }
  }

  showLoading(Widget? message,
      {String? header,
      bool barrierDismissible = true,
      String progressCounter = '0',
      String? additionalInfo}) {
    print('ShowLoading - $message');
    DialogHelper.showLoadingIndicator(message,
        header: header,
        barrierDismissible: barrierDismissible,
        additionalInfo: additionalInfo,
        progressCounter: progressCounter);
  }

  hideLoading() {
    DialogHelper.hideLoadingIndicator();
  }
}
