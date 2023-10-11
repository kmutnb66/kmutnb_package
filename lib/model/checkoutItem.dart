import 'dart:convert';

import 'package:flutter/foundation.dart';

class CheckoutItemModel {
  List<CheckoutItemList>? checkoutItem;
  CheckoutItemModel({
    this.checkoutItem,
  });

  CheckoutItemModel copyWith({
    List<CheckoutItemList>? checkoutItem,
  }) {
    return CheckoutItemModel(
      checkoutItem: checkoutItem ?? this.checkoutItem,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'CheckoutItem': checkoutItem?.map((x) => x.toMap()).toList(),
    };
  }

  factory CheckoutItemModel.fromMap(Map<String, dynamic> map) {
    return CheckoutItemModel(
      checkoutItem: map['CheckoutItem'] != null ? List<CheckoutItemList>.from(map['CheckoutItem']?.map((x) => CheckoutItemList.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CheckoutItemModel.fromJson(String source) => CheckoutItemModel.fromMap(json.decode(source));

  @override
  String toString() => 'CheckoutItemModel(checkoutItem: $checkoutItem)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CheckoutItemModel &&
      listEquals(other.checkoutItem, checkoutItem);
  }

  @override
  int get hashCode => checkoutItem.hashCode;
}

class CheckoutItemList {
  String? barcode;
  String? title;
  String? checkout_gmt;
  String? due_gmt;
  String? num_day_late;
  CheckoutItemList({
    this.barcode,
    this.title,
    this.checkout_gmt,
    this.due_gmt,
    this.num_day_late,
  });

  CheckoutItemList copyWith({
    String? barcode,
    String? title,
    String? checkout_gmt,
    String? due_gmt,
    String? num_day_late,
  }) {
    return CheckoutItemList(
      barcode: barcode ?? this.barcode,
      title: title ?? this.title,
      checkout_gmt: checkout_gmt ?? this.checkout_gmt,
      due_gmt: due_gmt ?? this.due_gmt,
      num_day_late: num_day_late ?? this.num_day_late,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'barcode': barcode,
      'title': title,
      'checkout_gmt': checkout_gmt,
      'due_gmt': due_gmt,
      'num_day_late': num_day_late,
    };
  }

  factory CheckoutItemList.fromMap(Map<String, dynamic> map) {
    return CheckoutItemList(
      barcode: map['barcode'],
      title: map['title'],
      checkout_gmt: map['checkout_gmt'],
      due_gmt: map['due_gmt'],
      num_day_late: map['num_day_late'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CheckoutItemList.fromJson(String source) => CheckoutItemList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CheckoutItemList(barcode: $barcode, title: $title, checkout_gmt: $checkout_gmt, due_gmt: $due_gmt, num_day_late: $num_day_late)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CheckoutItemList &&
      other.barcode == barcode &&
      other.title == title &&
      other.checkout_gmt == checkout_gmt &&
      other.due_gmt == due_gmt &&
      other.num_day_late == num_day_late;
  }

  @override
  int get hashCode {
    return barcode.hashCode ^
      title.hashCode ^
      checkout_gmt.hashCode ^
      due_gmt.hashCode ^
      num_day_late.hashCode;
  }
}
