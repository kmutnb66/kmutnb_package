import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class HoldHttp {
  EnvironmentModel enviroment;
  HoldHttp({required this.enviroment});
  Future<http.Response> create({Map<String, dynamic>? data,Map<String, dynamic>? query}) async{
     var url = Uri.https(enviroment.apiUrls[ApiName.smartapp],
        "/LibMobile/v1/patron/checkout", query);
    var response = await http.post(url, headers: {"authorization": ""},body: data);
    return response;
  }

  Future<http.Response> renew({required String checkoutid,Map<String, dynamic>? data,Map<String, dynamic>? query}) async{
     var url = Uri.https(enviroment.apiUrls[ApiName.smartapp],
        "/LibMobile/v1/patron/$checkoutid/renew", query);
    var response = await http.post(url, headers: {"authorization": ""},body: data);
    return response;
  }
  
}

class MoreItemInfoHttp {
  EnvironmentModel enviroment;
  MoreItemInfoHttp({required this.enviroment});
  Future<http.Response> object(
      {required String barcode, Map<String, dynamic>? query}) async {
    var url = Uri.http(enviroment.apiUrls[0],
        "/api4libmobile/api/index.php/XItemInfo/$barcode", query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }
// qwefjiew
  Future<http.Response> cover(
      {required String bib_record_id, Map<String, dynamic>? query}) async {
    var url = Uri.http(enviroment.apiUrls[0],
        "/api4libmobile/api/index.php/GetCoverByBibRecId/$bib_record_id", query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }
}

class CheckoutItemHttp {
  EnvironmentModel enviroment;
  CheckoutItemHttp({required this.enviroment});
  Future<http.Response> list(
      {required String patron_record_id, Map<String, dynamic>? query}) async {
    var url = Uri.http(enviroment.apiUrls[0],
        "/api4libmobile/api/index.php/CheckoutItem/$patron_record_id", query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }
}

class OverdueItemHttp {
  EnvironmentModel enviroment;
  OverdueItemHttp({required this.enviroment});
  Future<http.Response> list(
      {required String patron_record_id, Map<String, dynamic>? query}) async {
    var url = Uri.http(enviroment.apiUrls[0],
        "/api4libmobile/api/index.php/OverdueItem/$patron_record_id", query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }
}
