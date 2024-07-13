
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class NotiHttp {
  EnvironmentModel enviroment;
  NotiHttp({required this.enviroment});
  Future<http.Response> list({required String patron_barcode,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/notifies/$patron_barcode" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

   Future<http.Response> read({required String notifyRecId,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/notifies/$notifyRecId" ,query);
    var response = await http.put(url, headers: {"authorization": ""});
    return response;
  }

}
