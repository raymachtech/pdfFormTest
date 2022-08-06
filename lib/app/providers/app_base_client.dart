import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:crewmach_training_module/app/providers/app_exception.dart';

import 'app_api_endpoint.dart';

import 'package:http/http.dart' as http;

class AppBaseClient {
  //GET

  Future<dynamic> get(String baseUrl, String api, String parameters) async {
    // print('One');
    var uri = Uri.parse(baseUrl.trim() + api.trim() + parameters.trim());
    try {
      // print('URI : ' + uri.toString());
      var response = await http
          .get(uri)
          .timeout(Duration(seconds: AppAPIEndPoints.TIMEOUT_REQUEST));

      // print('Response Body : ' + response.body.toString());
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection', uri.toString());
    } on TimeoutException {
      throw RequestTimeOutException(
          'Reqeust Timed Out, Current Time ${AppAPIEndPoints.TIMEOUT_REQUEST.toString()} Seconds',
          uri.toString());
    } //on FetchDataException {
    //throw UnableToProcessException("Unable To Process Data", uri.toString());
    //}
    catch (e) {
      print('Error : ' + e.toString() + ' - ABC28');
    }
  }

  //POST
  Future<dynamic> post(String baseUrl, String api, dynamic jsonPayLoad) async {
    var uri = Uri.parse(baseUrl + api);
    var jsonBody = jsonEncode(jsonPayLoad);

    try {
      var response = await http.post(
        uri,
        body: jsonBody,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      ).timeout(Duration(seconds: AppAPIEndPoints.TIMEOUT_REQUEST));
      return _processResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection', uri.toString());
    } on TimeoutException {
      throw RequestTimeOutException('Request Timed Out', uri.toString());
    } on BadRequestException {
      throw BadRequestException('Bad Request', uri.toString());
    } //catch (e) {}
  }

  //DELETE
  //UPDATE

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = jsonDecode(response.body);
        print(responseJson.toString());
        //utf8.decode(response.bodyBytes);
        return responseJson;
      case 201:
        var responseJson = jsonDecode(response.body);
        print(responseJson.toString());
        //utf8.decode(response.bodyBytes); //
        return responseJson;
      case 400:
        throw BadRequestException(
            jsonDecode(response.body), response.request!.url.toString());
      case 401:

      case 403:
        throw UnAuthorizedException(
            jsonDecode(response.body), response.request!.url.toString());
      case 500:

      default:
        throw FetchDataException('Error Response Code : ${response.statusCode}',
            response.request!.url.toString());
    }
  }
}
