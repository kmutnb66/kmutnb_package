
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class ItemListHttp {
  EnvironmentModel enviroment;
  ItemListHttp({required this.enviroment});
  Future<http.Response> list({Map<String, dynamic>? query}) async {
    var _query = Uri(queryParameters: query).query;
    var url = Uri.parse(enviroment.apiUrls[0] + "/api4libmobile/api/index.php/GetItemList?" + _query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> object({required String bib_id ,Map<String, dynamic>? query}) async {
    var _query = Uri(queryParameters: query).query;
    var url = Uri.parse(enviroment.apiUrls[0] + "/api4libmobile/api/index.php/GetItemList/$bib_id?" + _query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
