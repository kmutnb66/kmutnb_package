import 'dart:convert';

import 'package:flutter/foundation.dart';

class RoomModel {
  int? room_id;
  String? room_name;
  String? room_description;
  String? date;
  bool? full;
  Map<String,dynamic>? time;
  RoomModel({
    this.room_id,
    this.room_name,
    this.room_description,
    this.date,
    this.full,
    this.time,
  });
 

  RoomModel copyWith({
    int? room_id,
    String? room_name,
    String? room_description,
    String? date,
    bool? full,
    Map<String,dynamic>? time,
  }) {
    return RoomModel(
      room_id: room_id ?? this.room_id,
      room_name: room_name ?? this.room_name,
      room_description: room_description ?? this.room_description,
      date: date ?? this.date,
      full: full ?? this.full,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'room_id': room_id,
      'room_name': room_name,
      'room_description': room_description,
      'date': date,
      'full': full,
      'time': time,
    };
  }

  factory RoomModel.fromMap(Map<String, dynamic> map) {
    return RoomModel(
      room_id: map['room_id']?.toInt(),
      room_name: map['room_name'],
      room_description: map['room_description'],
      date: map['date'],
      full: map['full'],
      time: Map<String,dynamic>.from(map['time']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomModel.fromJson(String source) => RoomModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RoomModel(room_id: $room_id, room_name: $room_name, room_description: $room_description, date: $date, full: $full, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RoomModel &&
      other.room_id == room_id &&
      other.room_name == room_name &&
      other.room_description == room_description &&
      other.date == date &&
      other.full == full &&
      mapEquals(other.time, time);
  }

  @override
  int get hashCode {
    return room_id.hashCode ^
      room_name.hashCode ^
      room_description.hashCode ^
      date.hashCode ^
      full.hashCode ^
      time.hashCode;
  }
}
