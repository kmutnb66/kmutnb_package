import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kmutnb_package/model/holds_form.dart';

class BookDetailModel {
  String? id;
  String? updatedDate;
  String? createdDate;
  bool? deleted;
  List<String>? bibIds;
  LocationModel? location;
  BookDetailStatusModel? status;
  String? barcode;
  String? callNumber;
  BookDetailModel({
    this.id,
    this.updatedDate,
    this.createdDate,
    this.deleted,
    this.bibIds,
    this.location,
    this.status,
    this.barcode,
    this.callNumber,
  });
 

  BookDetailModel copyWith({
    String? id,
    String? updatedDate,
    String? createdDate,
    bool? deleted,
    List<String>? bibIds,
    LocationModel? location,
    BookDetailStatusModel? status,
    String? barcode,
    String? callNumber,
  }) {
    return BookDetailModel(
      id: id ?? this.id,
      updatedDate: updatedDate ?? this.updatedDate,
      createdDate: createdDate ?? this.createdDate,
      deleted: deleted ?? this.deleted,
      bibIds: bibIds ?? this.bibIds,
      location: location ?? this.location,
      status: status ?? this.status,
      barcode: barcode ?? this.barcode,
      callNumber: callNumber ?? this.callNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'updatedDate': updatedDate,
      'createdDate': createdDate,
      'deleted': deleted,
      'bibIds': bibIds,
      'location': location?.toMap(),
      'status': status?.toMap(),
      'barcode': barcode,
      'callNumber': callNumber,
    };
  }

  factory BookDetailModel.fromMap(Map<String, dynamic> map) {
    return BookDetailModel(
      id: map['id'],
      updatedDate: map['updatedDate'],
      createdDate: map['createdDate'],
      deleted: map['deleted'],
      bibIds: List<String>.from(map['bibIds']),
      location: map['location'] != null ? LocationModel.fromMap(map['location']) : null,
      status: map['status'] != null ? BookDetailStatusModel.fromMap(map['status']) : null,
      barcode: map['barcode'],
      callNumber: map['callNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BookDetailModel.fromJson(String source) => BookDetailModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BookDetailModel(id: $id, updatedDate: $updatedDate, createdDate: $createdDate, deleted: $deleted, bibIds: $bibIds, location: $location, status: $status, barcode: $barcode, callNumber: $callNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BookDetailModel &&
      other.id == id &&
      other.updatedDate == updatedDate &&
      other.createdDate == createdDate &&
      other.deleted == deleted &&
      listEquals(other.bibIds, bibIds) &&
      other.location == location &&
      other.status == status &&
      other.barcode == barcode &&
      other.callNumber == callNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      updatedDate.hashCode ^
      createdDate.hashCode ^
      deleted.hashCode ^
      bibIds.hashCode ^
      location.hashCode ^
      status.hashCode ^
      barcode.hashCode ^
      callNumber.hashCode;
  }
}

class BookDetailStatusModel {
  String? code;
  String? display;
  BookDetailStatusModel({
    this.code,
    this.display,
  });

  BookDetailStatusModel copyWith({
    String? code,
    String? display,
  }) {
    return BookDetailStatusModel(
      code: code ?? this.code,
      display: display ?? this.display,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'display': display,
    };
  }

  factory BookDetailStatusModel.fromMap(Map<String, dynamic> map) {
    return BookDetailStatusModel(
      code: map['code'],
      display: map['display'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BookDetailStatusModel.fromJson(String source) => BookDetailStatusModel.fromMap(json.decode(source));

  @override
  String toString() => 'BookDetailStatusModel(code: $code, display: $display)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BookDetailStatusModel &&
      other.code == code &&
      other.display == display;
  }

  @override
  int get hashCode => code.hashCode ^ display.hashCode;
}
