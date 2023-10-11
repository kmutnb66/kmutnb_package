
import 'package:http/http.dart' as http;
import 'package:kmutnb_package/model/enviroment.dart';

class NewsHotHttp {
  EnvironmentModel enviroment;
  NewsHotHttp({required this.enviroment});
  Future<http.Response> list({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/hotnews" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}

class NewsHttp {
  EnvironmentModel enviroment;
  NewsHttp({required this.enviroment});
  Future<http.Response> list({required String cate,Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/news/$cate" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}

class NewsTypesHttp {
  EnvironmentModel enviroment;
  NewsTypesHttp({required this.enviroment});
  Future<http.Response> list({Map<String, dynamic>? query}) async {
    var url = Uri.https(enviroment.apiUrls[ApiName.smartapp] ,"/LibMobile/v1/newstype" ,query);
    var response = await http.get(url, headers: {"authorization": ""});
    return response;
  }

}
