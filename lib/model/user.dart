

import 'dart:convert';
import 'dart:io';

import 'package:kmutnb_package/model/patron.dart';
import 'package:kmutnb_package/model/patronInfo.dart';

class UserModel {
  PatronModel? patron;
  PatronInfoList? patronInfo;
  String? token;
  File? image;
  UserModel({
    this.patron,
    this.patronInfo,
    this.token,
    this.image,
  });

  UserModel copyWith({
    PatronModel? patron,
    PatronInfoList? patronInfo,
    String? token,
    File? image,
  }) {
    return UserModel(
      patron: patron ?? this.patron,
      patronInfo: patronInfo ?? this.patronInfo,
      token: token ?? this.token,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'patron': patron?.toMap(),
      'patronInfo': patronInfo?.toMap(),
      'token': token,
      'image': image,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      patron: map['patron'] != null ? PatronModel.fromMap(map['patron']) : null,
      patronInfo: map['patronInfo'] != null ? PatronInfoList.fromMap(map['patronInfo']) : null,
      token: map['token'],
      image: map['image'] != null ? map['image'] : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(patron: $patron, patronInfo: $patronInfo, token: $token, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.patron == patron &&
      other.patronInfo == patronInfo &&
      other.token == token &&
      other.image == image;
  }

  @override
  int get hashCode {
    return patron.hashCode ^
      patronInfo.hashCode ^
      token.hashCode ^
      image.hashCode;
  }
}
