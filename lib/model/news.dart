import 'dart:convert';

class NewsHotModel {
  String? nhot_id;
  String? nhot_title;
  String? nhot_detail;
  String? nhot_close;
  String? nhot_create;
  String? nhot_update;
  String? nhot_view;
  String? nhot_user;
  String? nhot_top;
  String? nhot_img;
  String? nhot_url;
  String? nhot_count;
  String? nhot_status;
  String? code;
  NewsHotModel({
    this.nhot_id,
    this.nhot_title,
    this.nhot_detail,
    this.nhot_close,
    this.nhot_create,
    this.nhot_update,
    this.nhot_view,
    this.nhot_user,
    this.nhot_top,
    this.nhot_img,
    this.nhot_url,
    this.nhot_count,
    this.nhot_status,
    this.code,
  });

  NewsHotModel copyWith({
    String? nhot_id,
    String? nhot_title,
    String? nhot_detail,
    String? nhot_close,
    String? nhot_create,
    String? nhot_update,
    String? nhot_view,
    String? nhot_user,
    String? nhot_top,
    String? nhot_img,
    String? nhot_url,
    String? nhot_count,
    String? nhot_status,
    String? code,
  }) {
    return NewsHotModel(
      nhot_id: nhot_id ?? this.nhot_id,
      nhot_title: nhot_title ?? this.nhot_title,
      nhot_detail: nhot_detail ?? this.nhot_detail,
      nhot_close: nhot_close ?? this.nhot_close,
      nhot_create: nhot_create ?? this.nhot_create,
      nhot_update: nhot_update ?? this.nhot_update,
      nhot_view: nhot_view ?? this.nhot_view,
      nhot_user: nhot_user ?? this.nhot_user,
      nhot_top: nhot_top ?? this.nhot_top,
      nhot_img: nhot_img ?? this.nhot_img,
      nhot_url: nhot_url ?? this.nhot_url,
      nhot_count: nhot_count ?? this.nhot_count,
      nhot_status: nhot_status ?? this.nhot_status,
      code: code ?? this.code,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nhot_id': nhot_id,
      'nhot_title': nhot_title,
      'nhot_detail': nhot_detail,
      'nhot_close': nhot_close,
      'nhot_create': nhot_create,
      'nhot_update': nhot_update,
      'nhot_view': nhot_view,
      'nhot_user': nhot_user,
      'nhot_top': nhot_top,
      'nhot_img': nhot_img,
      'nhot_url': nhot_url,
      'nhot_count': nhot_count,
      'nhot_status': nhot_status,
      'code': code,
    };
  }

  factory NewsHotModel.fromMap(Map<String, dynamic> map) {
    return NewsHotModel(
      nhot_id: map['nhot_id'],
      nhot_title: map['nhot_title'],
      nhot_detail: map['nhot_detail'],
      nhot_close: map['nhot_close'],
      nhot_create: map['nhot_create'],
      nhot_update: map['nhot_update'],
      nhot_view: map['nhot_view'],
      nhot_user: map['nhot_user'],
      nhot_top: map['nhot_top'],
      nhot_img: map['nhot_img'],
      nhot_url: map['nhot_url'],
      nhot_count: map['nhot_count'],
      nhot_status: map['nhot_status'],
      code: map['code'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsHotModel.fromJson(String source) => NewsHotModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewsHotModel(nhot_id: $nhot_id, nhot_title: $nhot_title, nhot_detail: $nhot_detail, nhot_close: $nhot_close, nhot_create: $nhot_create, nhot_update: $nhot_update, nhot_view: $nhot_view, nhot_user: $nhot_user, nhot_top: $nhot_top, nhot_img: $nhot_img, nhot_url: $nhot_url, nhot_count: $nhot_count, nhot_status: $nhot_status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewsHotModel &&
      other.nhot_id == nhot_id &&
      other.nhot_title == nhot_title &&
      other.nhot_detail == nhot_detail &&
      other.nhot_close == nhot_close &&
      other.nhot_create == nhot_create &&
      other.nhot_update == nhot_update &&
      other.nhot_view == nhot_view &&
      other.nhot_user == nhot_user &&
      other.nhot_top == nhot_top &&
      other.nhot_img == nhot_img &&
      other.nhot_url == nhot_url &&
      other.nhot_count == nhot_count &&
      other.nhot_status == nhot_status &&
      other.code == code;
  }

  @override
  int get hashCode {
    return nhot_id.hashCode ^
      nhot_title.hashCode ^
      nhot_detail.hashCode ^
      nhot_close.hashCode ^
      nhot_create.hashCode ^
      nhot_update.hashCode ^
      nhot_view.hashCode ^
      nhot_user.hashCode ^
      nhot_top.hashCode ^
      nhot_img.hashCode ^
      nhot_url.hashCode ^
      nhot_count.hashCode ^
      nhot_status.hashCode ^
      code.hashCode;
  }
}




class NewsModel {
  String? n_id;
  String? n_title;
  String? n_detail;
  String? n_create;
  String? n_update;
  String? n_view;
  String? n_user;
  String? n_top;
  String? n_img;
  String? n_publicize;
  String? n_status;
  String? n_count;
  String? code;
  String? nt_id;
  String? dpt_id;
  NewsModel({
    this.n_id,
    this.n_title,
    this.n_detail,
    this.n_create,
    this.n_update,
    this.n_view,
    this.n_user,
    this.n_top,
    this.n_img,
    this.n_publicize,
    this.n_status,
    this.n_count,
    this.code,
    this.nt_id,
    this.dpt_id,
  });

  NewsModel copyWith({
    String? n_id,
    String? n_title,
    String? n_detail,
    String? n_create,
    String? n_update,
    String? n_view,
    String? n_user,
    String? n_top,
    String? n_img,
    String? n_publicize,
    String? n_status,
    String? n_count,
    String? code,
    String? nt_id,
    String? dpt_id,
  }) {
    return NewsModel(
      n_id: n_id ?? this.n_id,
      n_title: n_title ?? this.n_title,
      n_detail: n_detail ?? this.n_detail,
      n_create: n_create ?? this.n_create,
      n_update: n_update ?? this.n_update,
      n_view: n_view ?? this.n_view,
      n_user: n_user ?? this.n_user,
      n_top: n_top ?? this.n_top,
      n_img: n_img ?? this.n_img,
      n_publicize: n_publicize ?? this.n_publicize,
      n_status: n_status ?? this.n_status,
      n_count: n_count ?? this.n_count,
      code: code ?? this.code,
      nt_id: nt_id ?? this.nt_id,
      dpt_id: dpt_id ?? this.dpt_id,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'n_id': n_id,
      'n_title': n_title,
      'n_detail': n_detail,
      'n_create': n_create,
      'n_update': n_update,
      'n_view': n_view,
      'n_user': n_user,
      'n_top': n_top,
      'n_img': n_img,
      'n_publicize': n_publicize,
      'n_status': n_status,
      'n_count': n_count,
      'code': code,
      'nt_id': nt_id,
      'dpt_id': dpt_id,
    };
  }

  factory NewsModel.fromMap(Map<String, dynamic> map) {
    return NewsModel(
      n_id: map['n_id'],
      n_title: map['n_title'],
      n_detail: map['n_detail'],
      n_create: map['n_create'],
      n_update: map['n_update'],
      n_view: map['n_view'],
      n_user: map['n_user'],
      n_top: map['n_top'],
      n_img: map['n_img'],
      n_publicize: map['n_publicize'],
      n_status: map['n_status'],
      n_count: map['n_count'],
      code: map['code'],
      nt_id: map['nt_id'],
      dpt_id: map['dpt_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewsModel.fromJson(String source) => NewsModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewsModel(n_id: $n_id, n_title: $n_title, n_detail: $n_detail, n_create: $n_create, n_update: $n_update, n_view: $n_view, n_user: $n_user, n_top: $n_top, n_img: $n_img, n_publicize: $n_publicize, n_status: $n_status, n_count: $n_count, code: $code, nt_id: $nt_id, dpt_id: $dpt_id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewsModel &&
      other.n_id == n_id &&
      other.n_title == n_title &&
      other.n_detail == n_detail &&
      other.n_create == n_create &&
      other.n_update == n_update &&
      other.n_view == n_view &&
      other.n_user == n_user &&
      other.n_top == n_top &&
      other.n_img == n_img &&
      other.n_publicize == n_publicize &&
      other.n_status == n_status &&
      other.n_count == n_count &&
      other.code == code &&
      other.nt_id == nt_id &&
      other.dpt_id == dpt_id;
  }

  @override
  int get hashCode {
    return n_id.hashCode ^
      n_title.hashCode ^
      n_detail.hashCode ^
      n_create.hashCode ^
      n_update.hashCode ^
      n_view.hashCode ^
      n_user.hashCode ^
      n_top.hashCode ^
      n_img.hashCode ^
      n_publicize.hashCode ^
      n_status.hashCode ^
      n_count.hashCode ^
      code.hashCode ^
      nt_id.hashCode ^
      dpt_id.hashCode;
  }
}
