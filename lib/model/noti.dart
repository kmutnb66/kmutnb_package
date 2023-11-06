import 'dart:convert';



class NotiModel {
  String? TransacetionRecId;
  String? EnterDT;
  String? PatronCode;
  String? Mesg;
  String? UpdateDT;
  String? Status;
  NotiModel({
    this.TransacetionRecId,
    this.EnterDT,
    this.PatronCode,
    this.Mesg,
    this.UpdateDT,
    this.Status,
  });

  NotiModel copyWith({
    String? TransacetionRecId,
    String? EnterDT,
    String? PatronCode,
    String? Mesg,
    String? UpdateDT,
    String? Status,
  }) {
    return NotiModel(
      TransacetionRecId: TransacetionRecId ?? this.TransacetionRecId,
      EnterDT: EnterDT ?? this.EnterDT,
      PatronCode: PatronCode ?? this.PatronCode,
      Mesg: Mesg ?? this.Mesg,
      UpdateDT: UpdateDT ?? this.UpdateDT,
      Status: Status ?? this.Status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'TransacetionRecId': TransacetionRecId,
      'EnterDT': EnterDT,
      'PatronCode': PatronCode,
      'Mesg': Mesg,
      'UpdateDT': UpdateDT,
      'Status': Status,
    };
  }

  factory NotiModel.fromMap(Map<String, dynamic> map) {
    return NotiModel(
      TransacetionRecId: map['TransacetionRecId'],
      EnterDT: map['EnterDT'],
      PatronCode: map['PatronCode'],
      Mesg: map['Mesg'],
      UpdateDT: map['UpdateDT'],
      Status: map['Status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NotiModel.fromJson(String source) => NotiModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NotiModel(TransacetionRecId: $TransacetionRecId, EnterDT: $EnterDT, PatronCode: $PatronCode, Mesg: $Mesg, UpdateDT: $UpdateDT, Status: $Status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NotiModel &&
      other.TransacetionRecId == TransacetionRecId &&
      other.EnterDT == EnterDT &&
      other.PatronCode == PatronCode &&
      other.Mesg == Mesg &&
      other.UpdateDT == UpdateDT &&
      other.Status == Status;
  }

  @override
  int get hashCode {
    return TransacetionRecId.hashCode ^
      EnterDT.hashCode ^
      PatronCode.hashCode ^
      Mesg.hashCode ^
      UpdateDT.hashCode ^
      Status.hashCode;
  }
}
