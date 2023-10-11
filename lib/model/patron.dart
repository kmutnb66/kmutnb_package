import 'dart:convert';

class PatronModel {
  String? RecId;
  String? EnterDT;
  String? UserName;
  String? DisplayName;
  String? Email;
  String? API_TimeStamp;
  String? APIKey;
  PatronModel({
    this.RecId,
    this.EnterDT,
    this.UserName,
    this.DisplayName,
    this.Email,
    this.API_TimeStamp,
    this.APIKey,
  });

  PatronModel copyWith({
    String? RecId,
    String? EnterDT,
    String? UserName,
    String? DisplayName,
    String? Email,
    String? API_TimeStamp,
    String? APIKey,
  }) {
    return PatronModel(
      RecId: RecId ?? this.RecId,
      EnterDT: EnterDT ?? this.EnterDT,
      UserName: UserName ?? this.UserName,
      DisplayName: DisplayName ?? this.DisplayName,
      Email: Email ?? this.Email,
      API_TimeStamp: API_TimeStamp ?? this.API_TimeStamp,
      APIKey: APIKey ?? this.APIKey,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'RecId': RecId,
      'EnterDT': EnterDT,
      'UserName': UserName,
      'DisplayName': DisplayName,
      'Email': Email,
      'API_TimeStamp': API_TimeStamp,
      'APIKey': APIKey,
    };
  }

  factory PatronModel.fromMap(Map<String, dynamic> map) {
    return PatronModel(
      RecId: map['RecId'],
      EnterDT: map['EnterDT'],
      UserName: map['UserName'],
      DisplayName: map['DisplayName'],
      Email: map['Email'],
      API_TimeStamp: map['API_TimeStamp'],
      APIKey: map['APIKey'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PatronModel.fromJson(String source) => PatronModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PatronModel(RecId: $RecId, EnterDT: $EnterDT, UserName: $UserName, DisplayName: $DisplayName, Email: $Email, API_TimeStamp: $API_TimeStamp, APIKey: $APIKey)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PatronModel &&
      other.RecId == RecId &&
      other.EnterDT == EnterDT &&
      other.UserName == UserName &&
      other.DisplayName == DisplayName &&
      other.Email == Email &&
      other.API_TimeStamp == API_TimeStamp &&
      other.APIKey == APIKey;
  }

  @override
  int get hashCode {
    return RecId.hashCode ^
      EnterDT.hashCode ^
      UserName.hashCode ^
      DisplayName.hashCode ^
      Email.hashCode ^
      API_TimeStamp.hashCode ^
      APIKey.hashCode;
  }
}
