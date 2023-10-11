import 'dart:convert';

import 'package:flutter/foundation.dart';

class ItemListModel {
 List<ItemLists>? itemList;
  ItemListModel({
    this.itemList,
  });

  ItemListModel copyWith({
    List<ItemLists>? itemList,
  }) {
    return ItemListModel(
      itemList: itemList ?? this.itemList,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'ItemList': itemList?.map((x) => x.toMap()).toList(),
    };
  }

  factory ItemListModel.fromMap(Map<String, dynamic> map) {
    return ItemListModel(
      itemList: map['ItemList'] != null ? List<ItemLists>.from(map['ItemList']?.map((x) => ItemLists.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemListModel.fromJson(String source) => ItemListModel.fromMap(json.decode(source));

  @override
  String toString() => 'ItemListModel(itemList: $itemList)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemListModel &&
      listEquals(other.itemList, itemList);
  }

  @override
  int get hashCode => itemList.hashCode;
}

class ItemLists {
  String? id;
  String? barcode;
  String? item_status_code;
  String? call_number;
  String? item_status_name;
  String? location_name;
  double? copy_num;
  String? location_code;
  ItemLists({
    this.id,
    this.barcode,
    this.item_status_code,
    this.call_number,
    this.item_status_name,
    this.location_name,
    this.copy_num,
    this.location_code,
  });

  ItemLists copyWith({
    String? id,
    String? barcode,
    String? item_status_code,
    String? call_number,
    String? item_status_name,
    String? location_name,
    double? copy_num,
    String? location_code,
  }) {
    return ItemLists(
      id: id ?? this.id,
      barcode: barcode ?? this.barcode,
      item_status_code: item_status_code ?? this.item_status_code,
      call_number: call_number ?? this.call_number,
      item_status_name: item_status_name ?? this.item_status_name,
      location_name: location_name ?? this.location_name,
      copy_num: copy_num ?? this.copy_num,
      location_code: location_code ?? this.location_code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'barcode': barcode,
      'item_status_code': item_status_code,
      'call_number': call_number,
      'item_status_name': item_status_name,
      'location_name': location_name,
      'copy_num': copy_num,
      'location_code': location_code,
    };
  }

  factory ItemLists.fromMap(Map<String, dynamic> map) {
    return ItemLists(
      id: map['id'],
      barcode: map['barcode'],
      item_status_code: map['item_status_code'],
      call_number: map['call_number'],
      item_status_name: map['item_status_name'],
      location_name: map['location_name'],
      copy_num: map['copy_num']?.toDouble(),
      location_code: map['location_code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemLists.fromJson(String source) => ItemLists.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemLists(id: $id, barcode: $barcode, item_status_code: $item_status_code, call_number: $call_number, item_status_name: $item_status_name, location_name: $location_name, copy_num: $copy_num, location_code: $location_code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemLists &&
      other.id == id &&
      other.barcode == barcode &&
      other.item_status_code == item_status_code &&
      other.call_number == call_number &&
      other.item_status_name == item_status_name &&
      other.location_name == location_name &&
      other.copy_num == copy_num &&
      other.location_code == location_code;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      barcode.hashCode ^
      item_status_code.hashCode ^
      call_number.hashCode ^
      item_status_name.hashCode ^
      location_name.hashCode ^
      copy_num.hashCode ^
      location_code.hashCode;
  }
}
