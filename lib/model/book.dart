import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kmutnb_package/model/book_detail.dart';
import 'package:kmutnb_package/model/image.dart';

class BookModel {
  double? relevance;
  BookBibModel? bib;
  BookModel({
    this.relevance,
    this.bib,
  });

  BookModel copyWith({
    double? relevance,
    BookBibModel? bib,
  }) {
    return BookModel(
      relevance: relevance ?? this.relevance,
      bib: bib ?? this.bib,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'relevance': relevance,
      'bib': bib?.toMap(),
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      relevance: map['relevance']?.toDouble(),
      bib: map['bib'] != null ? BookBibModel.fromMap(map['bib']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookModel.fromJson(String source) => BookModel.fromMap(json.decode(source));

  @override
  String toString() => 'BookModel(relevance: $relevance, bib: $bib)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BookModel &&
      other.relevance == relevance &&
      other.bib == bib;
  }

  @override
  int get hashCode => relevance.hashCode ^ bib.hashCode;
}


class BookBibModel {
  String? id;
  String? title;
  String? author;
  double? publishYear;
  List<BookLocation>? locations;
  ImageModel? images;
  BookDetailModel? item;
  BookBibModel({
    this.id,
    this.title,
    this.author,
    this.publishYear,
    this.locations,
    this.images,
    this.item,
  });

  BookBibModel copyWith({
    String? id,
    String? title,
    String? author,
    double? publishYear,
    List<BookLocation>? locations,
    ImageModel? images,
    BookDetailModel? item,
  }) {
    return BookBibModel(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      publishYear: publishYear ?? this.publishYear,
      locations: locations ?? this.locations,
      images: images ?? this.images,
      item: item ?? this.item,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'publishYear': publishYear,
      'locations': locations?.map((x) => x.toMap()).toList(),
      'images': images?.toMap(),
      'item': item?.toMap(),
    };
  }

  factory BookBibModel.fromMap(Map<String, dynamic> map) {
    return BookBibModel(
      id: map['id'],
      title: map['title'],
      author: map['author'],
      publishYear: map['publishYear']?.toDouble(),
      locations: map['locations'] != null ? List<BookLocation>.from(map['locations']?.map((x) => BookLocation.fromMap(x))) : null,
      images: map['images'] != null ? ImageModel.fromMap(map['images']) : null,
      item: map['item'] != null ? BookDetailModel.fromMap(map['item']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookBibModel.fromJson(String source) => BookBibModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BookBibModel(id: $id, title: $title, author: $author, publishYear: $publishYear, locations: $locations, images: $images, item: $item)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BookBibModel &&
      other.id == id &&
      other.title == title &&
      other.author == author &&
      other.publishYear == publishYear &&
      listEquals(other.locations, locations) &&
      other.images == images &&
      other.item == item;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      author.hashCode ^
      publishYear.hashCode ^
      locations.hashCode ^
      images.hashCode ^
      item.hashCode;
  }
}

class BookLocation {
  String? code;
  String? name;
  BookLocation({
    this.code,
    this.name,
  });

  BookLocation copyWith({
    String? code,
    String? name,
  }) {
    return BookLocation(
      code: code ?? this.code,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'name': name,
    };
  }

  factory BookLocation.fromMap(Map<String, dynamic> map) {
    return BookLocation(
      code: map['code'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BookLocation.fromJson(String source) => BookLocation.fromMap(json.decode(source));

  @override
  String toString() => 'BookLocation(code: $code, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BookLocation &&
      other.code == code &&
      other.name == name;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
}
