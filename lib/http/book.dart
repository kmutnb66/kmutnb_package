
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';
import 'package:kmutnb_package/model/page.dart';

class BookHttp {
  EnvironmentModel enviroment;
  BookHttp({required this.enviroment});

  Future<http.Response> list({String search = "",PageModel? page,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/Bib/Search/$search/${page!.pageNumber}/${page.limit}" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
