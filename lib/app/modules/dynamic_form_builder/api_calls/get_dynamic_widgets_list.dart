import 'package:get/get.dart';

import '../../../providers/app_api_endpoint.dart';

class Provider extends GetConnect {
  Future<List<dynamic>> getFormWidgetsList() async {
    // Setting Up Body
    var requestBody = ''; // = '?form=$form';

    final response = await get(AppAPIEndPoints.BASE_URL +
        AppAPIEndPoints.GET_DYNAMIC_WIDGETS +
        requestBody);
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['response'];
    }
  }
}
