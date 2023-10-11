import 'dart:convert';

import 'package:flutter/foundation.dart';

class OverdueItemModel {
 List<OverdueItemList>? overdueItem;
  OverdueItemModel({
    this.overdueItem,
  });

  OverdueItemModel copyWith({
    List<OverdueItemList>? overdueItem,
  }) {
    return OverdueItemModel(
      overdueItem: overdueItem ?? this.overdueItem,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'OverdueItem': overdueItem?.map((x) => x.toMap()).toList(),
    };
  }

  factory OverdueItemModel.fromMap(Map<String, dynamic> map) {
    return OverdueItemModel(
      overdueItem: map['OverdueItem'] != null ? List<OverdueItemList>.from(map['OverdueItem']?.map((x) => OverdueItemList.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory OverdueItemModel.fromJson(String source) => OverdueItemModel.fromMap(json.decode(source));

  @override
  String toString() => 'OverdueItemModel(overdueItem: $overdueItem)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OverdueItemModel &&
      listEquals(other.overdueItem, overdueItem);
  }

  @override
  int get hashCode => overdueItem.hashCode;
}



class OverdueItemList {
  String? barcode;
  String? title;
  String? checkout_gmt;
  String? due_gmt;
  String? num_day_late;
  OverdueItemList({
    this.barcode,
    this.title,
    this.checkout_gmt,
    this.due_gmt,
    this.num_day_late,
  });

  OverdueItemList copyWith({
    String? barcode,
    String? title,
    String? checkout_gmt,
    String? due_gmt,
    String? num_day_late,
  }) {
    return OverdueItemList(
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

  factory OverdueItemList.fromMap(Map<String, dynamic> map) {
    return OverdueItemList(
      barcode: map['barcode'],
      title: map['title'],
      checkout_gmt: map['checkout_gmt'],
      due_gmt: map['due_gmt'],
      num_day_late: map['num_day_late'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OverdueItemList.fromJson(String source) => OverdueItemList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OverdueItemList(barcode: $barcode, title: $title, checkout_gmt: $checkout_gmt, due_gmt: $due_gmt, num_day_late: $num_day_late)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OverdueItemList &&
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
