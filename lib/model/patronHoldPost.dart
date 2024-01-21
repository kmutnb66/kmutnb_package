import 'dart:convert';



class PatronHoldPostModel {
  String? recordType;
  int? recordNumber;
  String? pickupLocation;
  String? neededBy;
  int? numberOfCopies;
  String? note;
  PatronHoldPostModel({
    this.recordType,
    this.recordNumber,
    this.pickupLocation,
    this.neededBy,
    this.numberOfCopies,
    this.note,
  });

  PatronHoldPostModel copyWith({
    String? recordType,
    int? recordNumber,
    String? pickupLocation,
    String? neededBy,
    int? numberOfCopies,
    String? note,
  }) {
    return PatronHoldPostModel(
      recordType: recordType ?? this.recordType,
      recordNumber: recordNumber ?? this.recordNumber,
      pickupLocation: pickupLocation ?? this.pickupLocation,
      neededBy: neededBy ?? this.neededBy,
      numberOfCopies: numberOfCopies ?? this.numberOfCopies,
      note: note ?? this.note,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'recordType': recordType,
      'recordNumber': recordNumber,
      'pickupLocation': pickupLocation,
      'neededBy': neededBy,
      'numberOfCopies': numberOfCopies,
      'note': note,
    };
  }

  factory PatronHoldPostModel.fromMap(Map<String, dynamic> map) {
    return PatronHoldPostModel(
      recordType: map['recordType'],
      recordNumber: map['recordNumber']?.toInt(),
      pickupLocation: map['pickupLocation'],
      neededBy: map['neededBy'],
      numberOfCopies: map['numberOfCopies']?.toInt(),
      note: map['note'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PatronHoldPostModel.fromJson(String source) => PatronHoldPostModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PatronHoldPostModel(recordType: $recordType, recordNumber: $recordNumber, pickupLocation: $pickupLocation, neededBy: $neededBy, numberOfCopies: $numberOfCopies, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PatronHoldPostModel &&
      other.recordType == recordType &&
      other.recordNumber == recordNumber &&
      other.pickupLocation == pickupLocation &&
      other.neededBy == neededBy &&
      other.numberOfCopies == numberOfCopies &&
      other.note == note;
  }

  @override
  int get hashCode {
    return recordType.hashCode ^
      recordNumber.hashCode ^
      pickupLocation.hashCode ^
      neededBy.hashCode ^
      numberOfCopies.hashCode ^
      note.hashCode;
  }
}
