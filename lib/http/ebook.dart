
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';
import 'package:kmutnb_package/model/page.dart';

class EBookHttp {
  EnvironmentModel enviroment;
  EBookHttp({required this.enviroment});

  Future<http.Response> list({String search = "",PageModel? page,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,search.isEmpty ? "/LibMobile/v1/ebooks/${page!.pageNumber}/${page.limit}" : "/LibMobile/v1/ebooks/Search/$search/${page!.pageNumber}/${page.limit}" , query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
