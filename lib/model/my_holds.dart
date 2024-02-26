import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kmutnb_package/model/book.dart';
import 'package:kmutnb_package/model/book_detail.dart';
import 'package:kmutnb_package/model/holds_form.dart';

class MyHoldsModel {
  int? total;
  int? start;
  List<MybookingListModel>? entries;
  MyHoldsModel({
    this.total,
    this.start,
    this.entries,
  });

  MyHoldsModel copyWith({
    int? total,
    int? start,
    List<MybookingListModel>? entries,
  }) {
    return MyHoldsModel(
      total: total ?? this.total,
      start: start ?? this.start,
      entries: entries ?? this.entries,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'total': total,
      'start': start,
      'entries': entries?.map((x) => x.toMap()).toList(),
    };
  }

  factory MyHoldsModel.fromMap(Map<String, dynamic> map) {
    return MyHoldsModel(
      total: map['total']?.toInt(),
      start: map['start']?.toInt(),
      entries: map['entries'] != null ? List<MybookingListModel>.from(map['entries']?.map((x) => MybookingListModel.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MyHoldsModel.fromJson(String source) => MyHoldsModel.fromMap(json.decode(source));

  @override
  String toString() => 'MyHoldsModel(total: $total, start: $start, entries: $entries)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MyHoldsModel &&
      other.total == total &&
      other.start == start &&
      listEquals(other.entries, entries);
  }

  @override
  int get hashCode => total.hashCode ^ start.hashCode ^ entries.hashCode;
 }


class MybookingListModel {
  String? id;
  String? record;
  String? patron;
  bool? frozen;
  String? placed;
  String? notNeededAfterDate;
  String? notWantedBeforeDate;
  LocationModel? pickupLocation;
  StatusHoldModel? status;
  String? recordType;
  int? priority;
  BookDetailModel? book_detail;
  BookModel? item_book;
  MybookingListModel({
    this.id,
    this.record,
    this.patron,
    this.frozen,
    this.placed,
    this.notNeededAfterDate,
    this.notWantedBeforeDate,
    this.pickupLocation,
    this.status,
    this.recordType,
    this.priority,
    this.book_detail,
    this.item_book,
  });

  MybookingListModel copyWith({
    String? id,
    String? record,
    String? patron,
    bool? frozen,
    String? placed,
    String? notNeededAfterDate,
    String? notWantedBeforeDate,
    LocationModel? pickupLocation,
    StatusHoldModel? status,
    String? recordType,
    int? priority,
    BookDetailModel? book_detail,
    BookModel? item_book,
  }) {
    return MybookingListModel(
      id: id ?? this.id,
      record: record ?? this.record,
      patron: patron ?? this.patron,
      frozen: frozen ?? this.frozen,
      placed: placed ?? this.placed,
      notNeededAfterDate: notNeededAfterDate ?? this.notNeededAfterDate,
      notWantedBeforeDate: notWantedBeforeDate ?? this.notWantedBeforeDate,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      status: status ?? this.status,
      recordType: recordType ?? this.recordType,
      priority: priority ?? this.priority,
      book_detail: book_detail ?? this.book_detail,
      item_book: item_book ?? this.item_book,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'record': record,
      'patron': patron,
      'frozen': frozen,
      'placed': placed,
      'notNeededAfterDate': notNeededAfterDate,
      'notWantedBeforeDate': notWantedBeforeDate,
      'pickupLocation': pickupLocation?.toMap(),
      'status': status?.toMap(),
      'recordType': recordType,
      'priority': priority,
      'book_detail': book_detail?.toMap(),
      'item_book': item_book?.toMap(),
    };
  }

  factory MybookingListModel.fromMap(Map<String, dynamic> map) {
    return MybookingListModel(
      id: map['id'],
      record: map['record'],
      patron: map['patron'],
      frozen: map['frozen'],
      placed: map['placed'],
      notNeededAfterDate: map['notNeededAfterDate'],
      notWantedBeforeDate: map['notWantedBeforeDate'],
      pickupLocation: map['pickupLocation'] != null ? LocationModel.fromMap(map['pickupLocation']) : null,
      status: map['status'] != null ? StatusHoldModel.fromMap(map['status']) : null,
      recordType: map['recordType'],
      priority: map['priority']?.toInt(),
      book_detail: map['book_detail'] != null ? BookDetailModel.fromMap(map['book_detail']) : null,
      item_book: map['item_book'] != null ? BookModel.fromMap(map['item_book']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MybookingListModel.fromJson(String source) => MybookingListModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MybookingListModel(id: $id, record: $record, patron: $patron, frozen: $frozen, placed: $placed, notNeededAfterDate: $notNeededAfterDate, notWantedBeforeDate: $notWantedBeforeDate, pickupLocation: $pickupLocation, status: $status, recordType: $recordType, priority: $priority, book_detail: $book_detail, item_book: $item_book)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MybookingListModel &&
      other.id == id &&
      other.record == record &&
      other.patron == patron &&
      other.frozen == frozen &&
      other.placed == placed &&
      other.notNeededAfterDate == notNeededAfterDate &&
      other.notWantedBeforeDate == notWantedBeforeDate &&
      other.pickupLocation == pickupLocation &&
      other.status == status &&
      other.recordType == recordType &&
      other.priority == priority &&
      other.book_detail == book_detail &&
      other.item_book == item_book;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      record.hashCode ^
      patron.hashCode ^
      frozen.hashCode ^
      placed.hashCode ^
      notNeededAfterDate.hashCode ^
      notWantedBeforeDate.hashCode ^
      pickupLocation.hashCode ^
      status.hashCode ^
      recordType.hashCode ^
      priority.hashCode ^
      book_detail.hashCode ^
      item_book.hashCode;
  }
 }

class StatusHoldModel {
  String? code;
  String? name;
  StatusHoldModel({
    this.code,
    this.name,
  });

  StatusHoldModel copyWith({
    String? code,
    String? name,
  }) {
    return StatusHoldModel(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
    };
  }

  factory StatusHoldModel.fromMap(Map<String, dynamic> map) {
    return StatusHoldModel(
      code: map['code'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory StatusHoldModel.fromJson(String source) => StatusHoldModel.fromMap(json.decode(source));

  @override
  String toString() => 'StatusHoldModel(code: $code, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is StatusHoldModel &&
      other.code == code &&
      other.name == name;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
 }
