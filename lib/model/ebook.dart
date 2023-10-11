import 'dart:convert';



class EBookModel {
  String? Title;
  String? Author;
  String? PublishYear;
  String? BibNumber;
  String? PathToFile;
  EBookModel({
    this.Title,
    this.Author,
    this.PublishYear,
    this.BibNumber,
    this.PathToFile,
  });

  EBookModel copyWith({
    String? Title,
    String? Author,
    String? PublishYear,
    String? BibNumber,
    String? PathToFile,
  }) {
    return EBookModel(
      Title: Title ?? this.Title,
      Author: Author ?? this.Author,
      PublishYear: PublishYear ?? this.PublishYear,
      BibNumber: BibNumber ?? this.BibNumber,
      PathToFile: PathToFile ?? this.PathToFile,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'Title': Title,
      'Author': Author,
      'PublishYear': PublishYear,
      'BibNumber': BibNumber,
      'PathToFile': PathToFile,
    };
  }

  factory EBookModel.fromMap(Map<String, dynamic> map) {
    return EBookModel(
      Title: map['Title'],
      Author: map['Author'],
      PublishYear: map['PublishYear'],
      BibNumber: map['BibNumber'],
      PathToFile: map['PathToFile'],
    );
  }

  String toJson() => json.encode(toMap());

  factory EBookModel.fromJson(String source) => EBookModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'EBookModel(Title: $Title, Author: $Author, PublishYear: $PublishYear, BibNumber: $BibNumber, PathToFile: $PathToFile)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is EBookModel &&
      other.Title == Title &&
      other.Author == Author &&
      other.PublishYear == PublishYear &&
      other.BibNumber == BibNumber &&
      other.PathToFile == PathToFile;
  }

  @override
  int get hashCode {
    return Title.hashCode ^
      Author.hashCode ^
      PublishYear.hashCode ^
      BibNumber.hashCode ^
      PathToFile.hashCode;
  }
}
