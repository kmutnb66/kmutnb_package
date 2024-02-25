
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';
import 'package:kmutnb_package/model/page.dart';
import 'package:kmutnb_package/model/patronHoldPost.dart';

class BookHttp {
  EnvironmentModel enviroment;
  BookHttp({required this.enviroment});

  Future<http.Response> list({String search = "",PageModel? page,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/Bib/Search/$search/${page!.pageNumber}/${page.limit}" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> oject({String id = "",Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/items/$id" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

   Future<http.Response> my({required String patron_id,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/patron/$patron_id/holds" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> form({required String patron_id,required String recordNumber,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/patron/$patron_id/holds/requests/form/$recordNumber" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

  Future<http.Response> create({required String patron_id,required PatronHoldPostModel data,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/patron/$patron_id/holds/requests" ,query);
    var response = await http.post(url,body: data.toJson(), headers: {"Content-Type": "application/json"});
    return response;
  }

}
