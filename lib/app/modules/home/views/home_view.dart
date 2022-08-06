import 'package:crewmach_training_module/app/modules/dynamic_form_builder/views/dynamic_form_builder_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  String url = "http://form.raymach.in/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {},
            // Get.to(DynamicFormBuilderView()),
            child: Text('Go To Form Builder'),
          ),
        ));
  }
}
