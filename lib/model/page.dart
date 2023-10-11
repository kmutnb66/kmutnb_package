import 'dart:convert';


class PageModel {
  int limit;
  int total;
  int pageNumber; 
  PageModel({
    required this.limit,
    required this.total,
    required this.pageNumber,
  });

  PageModel copyWith({
    int? limit,
    int? total,
    int? pageNumber,
  }) {
    return PageModel(
      limit: limit ?? this.limit,
      total: total ?? this.total,
      pageNumber: pageNumber ?? this.pageNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'limit': limit,
      'total': total,
      'pageNumber': pageNumber,
    };
  }

  factory PageModel.fromMap(Map<String, dynamic> map) {
    return PageModel(
      limit: map['limit']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      pageNumber: map['pageNumber']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PageModel.fromJson(String source) => PageModel.fromMap(json.decode(source));

  @override
  String toString() => 'PageModel(limit: $limit, total: $total, pageNumber: $pageNumber)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PageModel &&
      other.limit == limit &&
      other.total == total &&
      other.pageNumber == pageNumber;
  }

  @override
  int get hashCode => limit.hashCode ^ total.hashCode ^ pageNumber.hashCode;
}
