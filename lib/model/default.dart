import 'dart:convert';



class DefaultModel {
  String? id;
  String? value;
  DefaultModel({
    this.id,
    this.value,
  });

  DefaultModel copyWith({
    String? id,
    String? value,
  }) {
    return DefaultModel(
      id: id ?? this.id,
      value: value ?? this.value,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'value': value,
    };
  }

  factory DefaultModel.fromMap(Map<String, dynamic> map) {
    return DefaultModel(
      id: map['id'],
      value: map['value'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DefaultModel.fromJson(String source) => DefaultModel.fromMap(json.decode(source));

  @override
  String toString() => 'DefaultModel(id: $id, value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is DefaultModel &&
      other.id == id &&
      other.value == value;
  }

  @override
  int get hashCode => id.hashCode ^ value.hashCode;
}
