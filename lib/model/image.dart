import 'dart:convert';

import 'package:flutter/foundation.dart';

class ImageModel {
  List<UrlImageModel>? CoverURL;
  ImageModel({
    this.CoverURL,
  });

  ImageModel copyWith({
    List<UrlImageModel>? CoverURL,
  }) {
    return ImageModel(
      CoverURL: CoverURL ?? this.CoverURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'CoverURL': CoverURL?.map((x) => x.toMap()).toList(),
    };
  }

  factory ImageModel.fromMap(Map<String, dynamic> map) {
    return ImageModel(
      CoverURL: map['CoverURL'] != null ? List<UrlImageModel>.from(map['CoverURL']?.map((x) => UrlImageModel.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModel.fromJson(String source) => ImageModel.fromMap(json.decode(source));

  @override
  String toString() => 'ImageModel(CoverURL: $CoverURL)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ImageModel &&
      listEquals(other.CoverURL, CoverURL);
  }

  @override
  int get hashCode => CoverURL.hashCode;
}


class UrlImageModel {
  String? cover_url;
  UrlImageModel({
    this.cover_url,
  });

  UrlImageModel copyWith({
    String? cover_url,
  }) {
    return UrlImageModel(
      cover_url: cover_url ?? this.cover_url,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cover_url': cover_url,
    };
  }

  factory UrlImageModel.fromMap(Map<String, dynamic> map) {
    return UrlImageModel(
      cover_url: map['cover_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UrlImageModel.fromJson(String source) => UrlImageModel.fromMap(json.decode(source));

  @override
  String toString() => 'UrlImageModel(cover_url: $cover_url)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UrlImageModel &&
      other.cover_url == cover_url;
  }

  @override
  int get hashCode => cover_url.hashCode;
}
