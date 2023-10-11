class ApiName {
  static const apiA = 0;
  static const udom = 1;
  static const smartapp = 2;
  static const smartroom = 3;
  static const app = 4;
  static const apiB = 5;
}

class EnvironmentModel {
  List<String> apiUrls;
  String appName;
  String version;
  bool product;
  String? url;
  EnvironmentModel(
      {required this.apiUrls,
      required this.version,
      required this.product,
      this.url,
      required this.appName});
}