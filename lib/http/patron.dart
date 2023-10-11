import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class PatronHttp {
  EnvironmentModel enviroment;
  PatronHttp({required this.enviroment});
  Future<http.Response> list(String id,{Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/patron/$id" , query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
