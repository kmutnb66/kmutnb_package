import 'dart:convert';

class CoverModel {
  String? cover_url;
  CoverModel({
    this.cover_url,
  });

  CoverModel copyWith({
    String? cover_url,
  }) {
    return CoverModel(
      cover_url: cover_url ?? this.cover_url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cover_url': cover_url,
    };
  }

  factory CoverModel.fromMap(Map<String, dynamic> map) {
    return CoverModel(
      cover_url: map['cover_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CoverModel.fromJson(String source) => CoverModel.fromMap(json.decode(source));

  @override
  String toString() => 'CoverModel(cover_url: $cover_url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is CoverModel &&
      other.cover_url == cover_url;
  }

  @override
  int get hashCode => cover_url.hashCode;
 }
