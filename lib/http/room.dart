
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class RoomHttp {
  EnvironmentModel enviroment;
  RoomHttp({required this.enviroment});
  Future<http.Response> list({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartroom] ,"/api/showroom" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

   Future<http.Response> create({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartroom] ,"/bookroom/bookapi" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}

class RoomBookingHttp {
  EnvironmentModel enviroment;
  RoomBookingHttp({required this.enviroment});
  Future<http.Response> list({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartroom] ,"/api/mybook" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> cancel({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartroom] ,"/bookroom/deleteapi" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
