library kmutnb_package;

import 'package:kmutnb_package/exception/error.dart';
import 'package:kmutnb_package/http/book.dart';
import 'package:kmutnb_package/http/ebook.dart';
import 'package:kmutnb_package/http/getItemList.dart';
import 'package:kmutnb_package/http/hold.dart';
import 'package:kmutnb_package/http/news.dart';
import 'package:kmutnb_package/http/noti.dart';
import 'package:kmutnb_package/http/patron.dart';
import 'package:kmutnb_package/http/patronInfo.dart';
import 'package:kmutnb_package/http/room.dart';
import 'package:kmutnb_package/model/enviroment.dart';
import 'package:http/http.dart' as http;


class KmutnbService{

  static ApiServiceModel apiService({EnvironmentModel? env}) {
    if(env == null){
      throw ErrorExceptionCustom(code: '401', message: 'Required environment setting Please set enviroment in project.');
    }
    return ApiServiceModel(
      book: BookHttp(enviroment: env),
      eBook: EBookHttp(enviroment: env),
      itemList: ItemListHttp(enviroment: env),
      hold: HoldHttp(enviroment: env),
      moreItemInfo: MoreItemInfoHttp(enviroment: env),
      checkoutItem: CheckoutItemHttp(enviroment: env),
      overdueItem: OverdueItemHttp(enviroment: env),
      newsHot: NewsHotHttp(enviroment: env),
      news: NewsHttp(enviroment: env),
      newsTypes: NewsTypesHttp(enviroment: env),
      patron: PatronHttp(enviroment: env),
      patronInfo: PatronInfoHttp(enviroment: env),
      room: RoomHttp(enviroment: env),
      roomBooking: RoomBookingHttp(enviroment: env),
      notiHttp: NotiHttp(enviroment: env),
      customService: CustomService(enviroment: env)
    );
  }
}

class ApiServiceModel{
  BookHttp book;
  EBookHttp eBook;
  ItemListHttp itemList;
  HoldHttp hold;
  MoreItemInfoHttp moreItemInfo;
  CheckoutItemHttp checkoutItem;
  OverdueItemHttp overdueItem;
  NewsHotHttp newsHot;
  NewsHttp news;
  NewsTypesHttp newsTypes;
  PatronHttp patron;
  PatronInfoHttp patronInfo;
  RoomHttp room;
  RoomBookingHttp roomBooking;
  NotiHttp notiHttp;
  CustomService customService;
  ApiServiceModel({
    required this.book,
    required this.eBook,
    required this.itemList,
    required this.hold,
    required this.moreItemInfo,
    required this.checkoutItem,
    required this.overdueItem,
    required this.newsHot,
    required this.news,
    required this.newsTypes,
    required this.patron,
    required this.patronInfo,
    required this.room,
    required this.roomBooking,
    required this.notiHttp,
    required this.customService,
  });
}

class CustomService{
  EnvironmentModel enviroment;
  CustomService({required this.enviroment});

  Future<http.Response> object(String path,String id,{Map<String,dynamic>? query,int? appName = 1})async{
    var url = Uri.https(enviroment.apiUrls[appName!] ,"$path/$id" ,query);
    var response = await http.get(url);
    return response;
  }
  
  Future<http.Response> list(String path,{Map<String,dynamic>? query,int? appName = 1})async{
    var url = Uri.https(enviroment.apiUrls[appName!] ,"$path" ,query);
    var response = await http.get(url);
    return response;
  }

  Future<http.Response> create(String path,{Map<String,dynamic>? query,int? appName = 1})async{
    var url = Uri.https(enviroment.apiUrls[appName!] ,"$path" ,query);
    var response = await http.post(url);
    return response;
  }

  Future<http.Response> update(String path,String id,{Map<String,dynamic>? query,int? appName = 1})async{
    var url = Uri.https(enviroment.apiUrls[appName!] ,"$path/$id" ,query);
    var response = await http.put(url);
    return response;
  }

  Future<http.Response> delete(String path,String id,{Map<String,dynamic>? query,int? appName = 1})async{
    var url = Uri.https(enviroment.apiUrls[appName!] ,"$path/$id" ,query);
    var response = await http.delete(url);
    return response;
  }


}


