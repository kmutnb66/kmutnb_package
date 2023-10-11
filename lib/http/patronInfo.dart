
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class PatronInfoHttp {
  EnvironmentModel enviroment;
  PatronInfoHttp({required this.enviroment});

  Future<http.Response> list(String id,{Map<String, dynamic>? query}) async {
    var _query = Uri(queryParameters: query).queryParameters;
    var url = Uri.http(enviroment.apiUrls[0] ,"/api4libmobile/api/index.php/PatronInfo/$id" , _query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> image({Map<String, dynamic>? query}) async {
    var _query = Uri(queryParameters: query).queryParameters;
    var url = Uri.http(enviroment.apiUrls[5] ,"/stdimages.php" , _query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> logout({required String regis,Map<String, dynamic>? query}) async {
    var _query = Uri(queryParameters: query).queryParameters;
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/registration/$regis" , _query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
