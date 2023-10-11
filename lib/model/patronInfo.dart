import 'dart:convert';

import 'package:flutter/foundation.dart';

class PatronInfoModel {
  List<PatronInfoList>? patron_record;
  PatronInfoModel({
    this.patron_record,
  });

  PatronInfoModel copyWith({
    List<PatronInfoList>? patron_record,
  }) {
    return PatronInfoModel(
      patron_record: patron_record ?? this.patron_record,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'patron_record': patron_record?.map((x) => x.toMap()).toList(),
    };
  }

  factory PatronInfoModel.fromMap(Map<String, dynamic> map) {
    return PatronInfoModel(
      patron_record: map['patron_record'] != null ? List<PatronInfoList>.from(map['patron_record']?.map((x) => PatronInfoList.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory PatronInfoModel.fromJson(String source) => PatronInfoModel.fromMap(json.decode(source));

  @override
  String toString() => 'PatronInfoModel(patron_record: $patron_record)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PatronInfoModel &&
      listEquals(other.patron_record, patron_record);
  }

  @override
  int get hashCode => patron_record.hashCode;
}

class PatronInfoList {
  String? barcode;
  String? patron_record_id;
  String? last_name;
  String? activity_gmt;
  String? owed_amt;
  double? checkout_count;
  String? expiration_date_gmt;
  double? ptype_code;
  String? email;
  String? patron_message_code;
  PatronInfoList({
    this.barcode,
    this.patron_record_id,
    this.last_name,
    this.activity_gmt,
    this.owed_amt,
    this.checkout_count,
    this.expiration_date_gmt,
    this.ptype_code,
    this.email,
    this.patron_message_code,
  });

  PatronInfoList copyWith({
    String? barcode,
    String? patron_record_id,
    String? last_name,
    String? activity_gmt,
    String? owed_amt,
    double? checkout_count,
    String? expiration_date_gmt,
    double? ptype_code,
    String? email,
    String? patron_message_code,
  }) {
    return PatronInfoList(
      barcode: barcode ?? this.barcode,
      patron_record_id: patron_record_id ?? this.patron_record_id,
      last_name: last_name ?? this.last_name,
      activity_gmt: activity_gmt ?? this.activity_gmt,
      owed_amt: owed_amt ?? this.owed_amt,
      checkout_count: checkout_count ?? this.checkout_count,
      expiration_date_gmt: expiration_date_gmt ?? this.expiration_date_gmt,
      ptype_code: ptype_code ?? this.ptype_code,
      email: email ?? this.email,
      patron_message_code: patron_message_code ?? this.patron_message_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'barcode': barcode,
      'patron_record_id': patron_record_id,
      'last_name': last_name,
      'activity_gmt': activity_gmt,
      'owed_amt': owed_amt,
      'checkout_count': checkout_count,
      'expiration_date_gmt': expiration_date_gmt,
      'ptype_code': ptype_code,
      'email': email,
      'patron_message_code': patron_message_code,
    };
  }

  factory PatronInfoList.fromMap(Map<String, dynamic> map) {
    return PatronInfoList(
      barcode: map['barcode'],
      patron_record_id: map['patron_record_id'],
      last_name: map['last_name'],
      activity_gmt: map['activity_gmt'],
      owed_amt: map['owed_amt'],
      checkout_count: map['checkout_count']?.toDouble(),
      expiration_date_gmt: map['expiration_date_gmt'],
      ptype_code: map['ptype_code']?.toDouble(),
      email: map['email'],
      patron_message_code: map['patron_message_code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PatronInfoList.fromJson(String source) => PatronInfoList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PatronInfoList(barcode: $barcode, patron_record_id: $patron_record_id, last_name: $last_name, activity_gmt: $activity_gmt, owed_amt: $owed_amt, checkout_count: $checkout_count, expiration_date_gmt: $expiration_date_gmt, ptype_code: $ptype_code, email: $email, patron_message_code: $patron_message_code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PatronInfoList &&
      other.barcode == barcode &&
      other.patron_record_id == patron_record_id &&
      other.last_name == last_name &&
      other.activity_gmt == activity_gmt &&
      other.owed_amt == owed_amt &&
      other.checkout_count == checkout_count &&
      other.expiration_date_gmt == expiration_date_gmt &&
      other.ptype_code == ptype_code &&
      other.email == email &&
      other.patron_message_code == patron_message_code;
  }

  @override
  int get hashCode {
    return barcode.hashCode ^
      patron_record_id.hashCode ^
      last_name.hashCode ^
      activity_gmt.hashCode ^
      owed_amt.hashCode ^
      checkout_count.hashCode ^
      expiration_date_gmt.hashCode ^
      ptype_code.hashCode ^
      email.hashCode ^
      patron_message_code.hashCode;
  }
}
