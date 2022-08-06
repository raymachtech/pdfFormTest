import 'package:crewmach_training_module/app/modules/dynamic_form_builder/models/model_dynamic_form_builder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_form_builder_controller.dart';

class DynamicFormBuilderView extends GetView<DynamicFormBuilderController> {
  const DynamicFormBuilderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DynamicFormBuilderController dynamicFormBuilderController =
        Get.put(DynamicFormBuilderController());

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Form Data Entry'),
          centerTitle: true,
        ),
        body: dynamicFormBuilderController.obx(
          (data) => Center(
            child: ListView.builder(
              itemCount: data!.length,
              itemBuilder: (BuildContext context, int index) {
                print(data[index]);
                return Column(
                  children: [
                    DynamicWidget(
                      id: data[index]['Id'].toString(),
                      formID: data[index]['FormId'].toString(),
                      inputElementID: data[index]['InputElementID'].toString(),
                      inputElementName:
                          data[index]['InputElementName'].toString(),
                      inputElementType:
                          data[index]['InputElementType'].toString(),
                      dataSource: data[index]['DataSource'].toString(),
                      uiControlType: data[index]['UIControlType'].toString(),
                      uiControlValues:
                          data[index]['UIControlValues'].toString(),
                      pageNo: data[index]['PageNo'].toString(),
                      isActive: data[index]['IsActive'].toString(),
                      loadDate: data[index]['LoadDate'].toString(),
                      position: data[index]['Position'].toString(),
                      xAxis: data[index]['x'].toString(),
                      yAxis: data[index]['y'].toString(),
                      elementValue: 'SpiceJet',
                    )
                    // ListTile(
                    //   title: Text(data[index]['Id'].toString()),
                    //   subtitle:
                    //       Text(data[index]['InputElementName'].toString()),
                    // )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class DynamicWidgets extends StatefulWidget {
  const DynamicWidgets({Key? key}) : super(key: key);

  @override
  State<DynamicWidgets> createState() => _DynamicWidgetsState();
}

class _DynamicWidgetsState extends State<DynamicWidgets> {
  List<DynamicWidget> listDynamic = [];
  DynamicFormBuilderController dynamicFormBuilderController =
      Get.put(DynamicFormBuilderController());

  addDynamic() {
    // if (listDynamic.length >= 5) {
    //   return;
    // }
    // listDynamic.add(DynamicWidget());
    setState(() {});
  }

  submitData() {
    for (var element in listDynamic) {
      print(element.controller.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        dynamicFormBuilderController.obx(
          (data) => Center(),
        ),

//         dynamicFormBuilderController.obs((data) => Center(child: ListView.builder(itemCount: data!., itemBuilder: itemBuilder),)),
//         Flexible(
//           child: ListView.builder(
//             itemCount: dynamicFormBuilderController
//                 .modelDynamicFormBuilderInfo.value!.length,
//             itemBuilder: (BuildContext context, int index) (){
// return Card();
//             } ,
//                 // dynamicFormBuilderController.modelDynamicFormBuilderInfo.map((data) => data), //listDynamic[index],
//           ),
//         ),
        ElevatedButton(
          onPressed: submitData,
          child: const Text('Save Data'),
        ),
        ElevatedButton(
          onPressed: addDynamic,
          child: const Text('Add Widget'),
        )
      ],
    );
  }
}

class DynamicWidget extends StatelessWidget {
  DynamicWidget(
      {required this.id,
      required this.formID,
      required this.inputElementID,
      required this.inputElementName,
      required this.inputElementType,
      required this.dataSource,
      required this.uiControlType,
      required this.uiControlValues,
      required this.pageNo,
      required this.isActive,
      required this.loadDate,
      required this.position,
      required this.xAxis,
      required this.yAxis,
      required this.elementValue,
      Key? key})
      : super(key: key);

  TextEditingController controller = TextEditingController();
  final String id;
  final String formID;
  final String inputElementID;
  final String inputElementName;
  final String inputElementType;
  final String dataSource;
  final String uiControlType;
  final String uiControlValues;
  final String pageNo;
  final String isActive;
  final String loadDate;
  final String position;
  final String xAxis;
  final String yAxis;
  final String elementValue;

  @override
  Widget build(BuildContext context) {
    controller.text = elementValue;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        children: [
          Text(inputElementName),
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            child: TextField(
              controller: controller,
            ),
          )
        ],
      ),
      // TextField(
      //   controller: controller,
      //   decoration: const InputDecoration(hintText: 'Enter Data'),
      // ),
    );
  }
}
