


import 'package:kmutnb_package/translate/languages/languages.dart';

class Translate{
  static String? get({String? text,String lang_code = 'th'}){
    String? message = text;
    Map<String,dynamic> languages = Languages.data;
    if(languages[lang_code] != null && languages[lang_code][text] != null){
      message = languages[lang_code][text];
    }
    return message;
  }
}