import 'dart:convert';



class RoomBookingModel {
  String? date;
  String? time;
  String? room_number;
  RoomBookingModel({
    this.date,
    this.time,
    this.room_number,
  });

  RoomBookingModel copyWith({
    String? date,
    String? time,
    String? room_number,
  }) {
    return RoomBookingModel(
      date: date ?? this.date,
      time: time ?? this.time,
      room_number: room_number ?? this.room_number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'time': time,
      'room_number': room_number,
    };
  }

  factory RoomBookingModel.fromMap(Map<String, dynamic> map) {
    return RoomBookingModel(
      date: map['date'],
      time: map['time'],
      room_number: map['room_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomBookingModel.fromJson(String source) => RoomBookingModel.fromMap(json.decode(source));

  @override
  String toString() => 'RoomBookingModel(date: $date, time: $time, room_number: $room_number)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is RoomBookingModel &&
      other.date == date &&
      other.time == time &&
      other.room_number == room_number;
  }

  @override
  int get hashCode => date.hashCode ^ time.hashCode ^ room_number.hashCode;
}
