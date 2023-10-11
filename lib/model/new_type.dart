import 'dart:convert';



class NewTypeModel {
  String? nt_id;
  String? nt_name;
  String? nt_create;
  String? nt_update;
  String? nt_order;
  String? nt_status;
  String? code;
  NewTypeModel({
    this.nt_id,
    this.nt_name,
    this.nt_create,
    this.nt_update,
    this.nt_order,
    this.nt_status,
    this.code,
  });

  NewTypeModel copyWith({
    String? nt_id,
    String? nt_name,
    String? nt_create,
    String? nt_update,
    String? nt_order,
    String? nt_status,
    String? code,
  }) {
    return NewTypeModel(
      nt_id: nt_id ?? this.nt_id,
      nt_name: nt_name ?? this.nt_name,
      nt_create: nt_create ?? this.nt_create,
      nt_update: nt_update ?? this.nt_update,
      nt_order: nt_order ?? this.nt_order,
      nt_status: nt_status ?? this.nt_status,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nt_id': nt_id,
      'nt_name': nt_name,
      'nt_create': nt_create,
      'nt_update': nt_update,
      'nt_order': nt_order,
      'nt_status': nt_status,
      'code': code,
    };
  }

  factory NewTypeModel.fromMap(Map<String, dynamic> map) {
    return NewTypeModel(
      nt_id: map['nt_id'],
      nt_name: map['nt_name'],
      nt_create: map['nt_create'],
      nt_update: map['nt_update'],
      nt_order: map['nt_order'],
      nt_status: map['nt_status'],
      code: map['code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewTypeModel.fromJson(String source) => NewTypeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewTypeModel(nt_id: $nt_id, nt_name: $nt_name, nt_create: $nt_create, nt_update: $nt_update, nt_order: $nt_order, nt_status: $nt_status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewTypeModel &&
      other.nt_id == nt_id &&
      other.nt_name == nt_name &&
      other.nt_create == nt_create &&
      other.nt_update == nt_update &&
      other.nt_order == nt_order &&
      other.nt_status == nt_status &&
      other.code == code;
  }

  @override
  int get hashCode {
    return nt_id.hashCode ^
      nt_name.hashCode ^
      nt_create.hashCode ^
      nt_update.hashCode ^
      nt_order.hashCode ^
      nt_status.hashCode ^
      code.hashCode;
  }
 }
