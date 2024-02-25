import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:kmutnb_package/kmutnb_package.dart';
import 'package:kmutnb_package/model/book.dart';
import 'package:kmutnb_package/model/enviroment.dart';
import 'package:kmutnb_package/model/holds_form.dart';
import 'package:kmutnb_package/model/page.dart';

void main() {
  test('Kmutnb Package Test', () async{
    ApiServiceModel apiService = KmutnbService.apiService(env: EnvironmentModel(
         apiUrls: [
            "202.28.17.35",
            "udom.lib.kmutnb.ac.th",
            "smartapp.lib.kmutnb.ac.th",
            "smartroom.lib.kmutnb.ac.th",
            "app.lib.kmutnb.ac.th",
            "202.28.17.14"
          ],
          appName: 'KMUTNB LIBRARY',
          product: true,
          url:
              "https://food-storage.ap-south-1.linodeobjects.com/My App/Kmutnb/app-release.apk",
          version: "1.8")
    );
    var res = await apiService.eBook.list(search: 'python',page: PageModel(limit: 10, total: 0, pageNumber: 0));
    var body = jsonDecode(res.body);
    print(res.request);
    print(body);
  });
}
