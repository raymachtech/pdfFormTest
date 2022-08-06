// To parse this JSON data, do
//
//     final modelDynamicFormBuilder = modelDynamicFormBuilderFromJson(jsonString);

import 'dart:convert';

ModelDynamicFormBuilder modelDynamicFormBuilderFromJson(String str) =>
    ModelDynamicFormBuilder.fromJson(json.decode(str));

String modelDynamicFormBuilderToJson(ModelDynamicFormBuilder data) =>
    json.encode(data.toJson());

class ModelDynamicFormBuilder {
  ModelDynamicFormBuilder({
    this.dynamicWidgetsList,
  });

  List<DynamicWidgetsList>? dynamicWidgetsList;

  factory ModelDynamicFormBuilder.fromJson(Map<String, dynamic> json) =>
      ModelDynamicFormBuilder(
        dynamicWidgetsList: List<DynamicWidgetsList>.from(
            json["response"].map((x) => DynamicWidgetsList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "response":
            List<dynamic>.from(dynamicWidgetsList!.map((x) => x.toJson())),
      };
}

class DynamicWidgetsList {
  DynamicWidgetsList({
    this.id,
    this.formId,
    this.inputElementId,
    this.inputElementName,
    this.inputElementType,
    this.dataSource,
    this.uiControlType,
    this.uiControlValues,
    this.pageNo,
    this.isActive,
    this.loadDate,
    this.position,
    this.x,
    this.y,
  });

  int? id;
  String? formId;
  String? inputElementId;
  String? inputElementName;
  String? inputElementType;
  String? dataSource;
  String? uiControlType;
  dynamic uiControlValues;
  String? pageNo;
  bool? isActive;
  DateTime? loadDate;
  dynamic position;
  double? x;
  double? y;

  factory DynamicWidgetsList.fromJson(Map<String, dynamic> json) =>
      DynamicWidgetsList(
        id: json["Id"],
        formId: json["FormId"],
        inputElementId: json["InputElementID"],
        inputElementName: json["InputElementName"],
        inputElementType: json["InputElementType"],
        dataSource: json["DataSource"],
        uiControlType: json["UIControlType"],
        uiControlValues: json["UIControlValues"],
        pageNo: json["PageNo"],
        isActive: json["IsActive"],
        loadDate: DateTime.parse(json["LoadDate"]),
        position: json["Position"],
        x: json["x"].toDouble(),
        y: json["y"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "FormId": formId,
        "InputElementID": inputElementId,
        "InputElementName": inputElementName,
        "InputElementType": inputElementType,
        "DataSource": dataSource,
        "UIControlType": uiControlType,
        "UIControlValues": uiControlValues,
        "PageNo": pageNo,
        "IsActive": isActive,
        "LoadDate": loadDate!.toIso8601String(),
        "Position": position,
        "x": x,
        "y": y,
      };
}
