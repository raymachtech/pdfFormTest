import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:crewmach_training_module/app/modules/authentication/controllers/authentication_controller.dart';
// import 'package:crewmach_training_module/app/widget_master/cm_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showErrorDialog(
      {String dialogTitle = 'Error',
      String dialogDescription = 'Error Occurred'}) {
    Get.dialog(
      Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              dialogTitle,
              style: Get.textTheme.headline4,
            ),
            Text(
              dialogDescription,
              style: Get.textTheme.headline6,
            ),
            ElevatedButton(
              onPressed: () {
                if (Get.isDialogOpen == true) Get.back();
              },
              child: Text('Ok'),
            )
          ],
        ),
      ),
    );
  }

  static void showLoadingIndicator(Widget? message,
      {String? header,
      String? messageText,
      bool barrierDismissible = true,
      String progressCounter = '0',
      String? additionalInfo}) {
    // AuthenticationController authenticationController =
    //     Get.put(AuthenticationController());
    // authenticationController.deviceType == 'Tablet'
    Get.context!.isTablet
        ? Get.dialog(
            WillPopScope(
              onWillPop: () => Future.value(false),
              child: Builder(builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width * 0.60,
                  child: Dialog(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              ColorizeAnimatedText(
                                header ?? '',
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                                colors: [
                                  context.theme.primaryColorDark,
                                  context.theme.primaryColorLight,
                                ],
                              ),
                            ],
                          ),
                          Divider(),
                          SizedBox(
                            height: 8,
                          ),
                          // CustomProgressIndicator(),
                          SizedBox(
                            height: 8,
                          ),
                          ListTile(
                            title: message ?? Text('Loading...'),
                          ),
                          Divider(),
                          message ?? SizedBox(),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            additionalInfo ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                          // AnimatedTextKit(
                          //   repeatForever: true,
                          //   animatedTexts: [
                          //     FlickerAnimatedText(
                          //       additionalInfo ?? '',
                          //       textStyle: TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //         fontSize: 10,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
            barrierDismissible: barrierDismissible)
        : Get.dialog(
            WillPopScope(
              onWillPop: () => Future.value(false),
              child: Builder(builder: (context) {
                return Dialog(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ColorizeAnimatedText(
                              header ?? '',
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                              colors: [
                                context.theme.primaryColorDark,
                                context.theme.primaryColorLight,
                              ],
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: 8,
                        ),
                        // CustomProgressIndicator(),
                        SizedBox(
                          height: 8,
                        ),

                        Divider(),

                        message ?? SizedBox(),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(),
                        Text(
                          additionalInfo ?? '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        // AnimatedTextKit(
                        //   repeatForever: true,
                        //   animatedTexts: [
                        //     TyperAnimatedText(
                        //       additionalInfo ?? '',
                        //       textStyle: TextStyle(
                        //         fontWeight: FontWeight.bold,
                        //         fontSize: 10,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // ListTile(
                        //   title: message ?? Text('Loading...'),
                        //    subtitle: Text(additionalInfo ?? ''),
                        // ),
                      ],
                    ),
                  ),
                );
              }),
            ),
            barrierDismissible: barrierDismissible);
  }

  static void hideLoadingIndicator() {
    if (Get.isDialogOpen == true) Navigator.of(Get.overlayContext!).pop();
  }
}
