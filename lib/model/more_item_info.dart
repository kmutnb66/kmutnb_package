import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kmutnb_package/model/image.dart';

class MoreItemInfoModel {
 List<MoreItemInfoList>? more_item_info;
  MoreItemInfoModel({
    this.more_item_info,
  });

  MoreItemInfoModel copyWith({
    List<MoreItemInfoList>? more_item_info,
  }) {
    return MoreItemInfoModel(
      more_item_info: more_item_info ?? this.more_item_info,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'more_item_info': more_item_info?.map((x) => x.toMap()).toList(),
    };
  }

  factory MoreItemInfoModel.fromMap(Map<String, dynamic> map) {
    return MoreItemInfoModel(
      more_item_info: map['more_item_info'] != null ? List<MoreItemInfoList>.from(map['more_item_info']?.map((x) => MoreItemInfoList.fromMap(x))) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoreItemInfoModel.fromJson(String source) => MoreItemInfoModel.fromMap(json.decode(source));

  @override
  String toString() => 'MoreItemInfoModel(more_item_info: $more_item_info)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MoreItemInfoModel &&
      listEquals(other.more_item_info, more_item_info);
  }

  @override
  int get hashCode => more_item_info.hashCode;
}

class MoreItemInfoList {
  String? cover_url;
  String? id;
  String? record_type_code;
  double? record_num;
  String? language_code;
  String? bcode1;
  String? bcode2;
  String? bcode3;
  String? country_code;
  bool? is_available_at_library;
  double? index_change_count;
  String? allocation_rule_code;
  bool? is_on_course_reserve;
  bool? is_right_result_exact;
  double? skip_num;
  String? cataloging_date_gmt;
  String? marc_type_code;
  String? title;
  String? record_creation_date_gmt;
  String? bib_record_id;
  String? item_record_id;
  double? items_display_order;
  double? bibs_display_order;
  String? barcode;
  double? icode1;
  String? icode2;
  double? itype_code_num;
  String? location_code;
  double? agency_code_num;
  String? item_status_code;
  bool? is_inherit_loc;
  String? price;
  String? last_checkin_gmt;
  double? checkout_total;
  double? renewal_total;
  double? last_year_to_date_checkout_total;
  double? year_to_date_checkout_total;
  bool? is_bib_hold;
  double? copy_num;
  double? checkout_statistic_group_code_num;
  String? last_patron_record_metadata_id;
  String? inventory_gmt;
  double? checkin_statistics_group_code_num;
  double? use3_count;
  String? last_checkout_gmt;
  double? internal_use_count;
  double? copy_use_count;
  String? item_message_code;
  String? opac_message_code;
  String? virtual_type_code;
  double? virtual_item_central_code_num;
  String? holdings_code;
  String? save_itype_code_num;
  String? save_location_code;
  String? save_checkout_total;
  String? old_location_code;
  double? distance_learning_status;
  bool? is_suppressed;
  String? best_title;
  String? bib_level_code;
  String? material_code;
  double? publish_year;
  String? best_title_norm;
  String? best_author;
  String? best_author_norm;
  String? call_number;
  String? call_number_norm;
  String? record_id;
  String? varfield_id;
  String? field_type_code;
  String? marc_tag;
  String? marc_ind1;
  String? marc_ind2;
  double? occ_num;
  double? display_order;
  String? tag;
  String? content;
  String? varfield_type_code;
  String? field_content;
  ImageModel? images;
  MoreItemInfoList({
    this.cover_url,
    this.id,
    this.record_type_code,
    this.record_num,
    this.language_code,
    this.bcode1,
    this.bcode2,
    this.bcode3,
    this.country_code,
    this.is_available_at_library,
    this.index_change_count,
    this.allocation_rule_code,
    this.is_on_course_reserve,
    this.is_right_result_exact,
    this.skip_num,
    this.cataloging_date_gmt,
    this.marc_type_code,
    this.title,
    this.record_creation_date_gmt,
    this.bib_record_id,
    this.item_record_id,
    this.items_display_order,
    this.bibs_display_order,
    this.barcode,
    this.icode1,
    this.icode2,
    this.itype_code_num,
    this.location_code,
    this.agency_code_num,
    this.item_status_code,
    this.is_inherit_loc,
    this.price,
    this.last_checkin_gmt,
    this.checkout_total,
    this.renewal_total,
    this.last_year_to_date_checkout_total,
    this.year_to_date_checkout_total,
    this.is_bib_hold,
    this.copy_num,
    this.checkout_statistic_group_code_num,
    this.last_patron_record_metadata_id,
    this.inventory_gmt,
    this.checkin_statistics_group_code_num,
    this.use3_count,
    this.last_checkout_gmt,
    this.internal_use_count,
    this.copy_use_count,
    this.item_message_code,
    this.opac_message_code,
    this.virtual_type_code,
    this.virtual_item_central_code_num,
    this.holdings_code,
    this.save_itype_code_num,
    this.save_location_code,
    this.save_checkout_total,
    this.old_location_code,
    this.distance_learning_status,
    this.is_suppressed,
    this.best_title,
    this.bib_level_code,
    this.material_code,
    this.publish_year,
    this.best_title_norm,
    this.best_author,
    this.best_author_norm,
    this.call_number,
    this.call_number_norm,
    this.record_id,
    this.varfield_id,
    this.field_type_code,
    this.marc_tag,
    this.marc_ind1,
    this.marc_ind2,
    this.occ_num,
    this.display_order,
    this.tag,
    this.content,
    this.varfield_type_code,
    this.field_content,
    this.images,
  });

  MoreItemInfoList copyWith({
    String? cover_url,
    String? id,
    String? record_type_code,
    double? record_num,
    String? language_code,
    String? bcode1,
    String? bcode2,
    String? bcode3,
    String? country_code,
    bool? is_available_at_library,
    double? index_change_count,
    String? allocation_rule_code,
    bool? is_on_course_reserve,
    bool? is_right_result_exact,
    double? skip_num,
    String? cataloging_date_gmt,
    String? marc_type_code,
    String? title,
    String? record_creation_date_gmt,
    String? bib_record_id,
    String? item_record_id,
    double? items_display_order,
    double? bibs_display_order,
    String? barcode,
    double? icode1,
    String? icode2,
    double? itype_code_num,
    String? location_code,
    double? agency_code_num,
    String? item_status_code,
    bool? is_inherit_loc,
    String? price,
    String? last_checkin_gmt,
    double? checkout_total,
    double? renewal_total,
    double? last_year_to_date_checkout_total,
    double? year_to_date_checkout_total,
    bool? is_bib_hold,
    double? copy_num,
    double? checkout_statistic_group_code_num,
    String? last_patron_record_metadata_id,
    String? inventory_gmt,
    double? checkin_statistics_group_code_num,
    double? use3_count,
    String? last_checkout_gmt,
    double? internal_use_count,
    double? copy_use_count,
    String? item_message_code,
    String? opac_message_code,
    String? virtual_type_code,
    double? virtual_item_central_code_num,
    String? holdings_code,
    String? save_itype_code_num,
    String? save_location_code,
    String? save_checkout_total,
    String? old_location_code,
    double? distance_learning_status,
    bool? is_suppressed,
    String? best_title,
    String? bib_level_code,
    String? material_code,
    double? publish_year,
    String? best_title_norm,
    String? best_author,
    String? best_author_norm,
    String? call_number,
    String? call_number_norm,
    String? record_id,
    String? varfield_id,
    String? field_type_code,
    String? marc_tag,
    String? marc_ind1,
    String? marc_ind2,
    double? occ_num,
    double? display_order,
    String? tag,
    String? content,
    String? varfield_type_code,
    String? field_content,
    ImageModel? images,
  }) {
    return MoreItemInfoList(
      cover_url: cover_url ?? this.cover_url,
      id: id ?? this.id,
      record_type_code: record_type_code ?? this.record_type_code,
      record_num: record_num ?? this.record_num,
      language_code: language_code ?? this.language_code,
      bcode1: bcode1 ?? this.bcode1,
      bcode2: bcode2 ?? this.bcode2,
      bcode3: bcode3 ?? this.bcode3,
      country_code: country_code ?? this.country_code,
      is_available_at_library: is_available_at_library ?? this.is_available_at_library,
      index_change_count: index_change_count ?? this.index_change_count,
      allocation_rule_code: allocation_rule_code ?? this.allocation_rule_code,
      is_on_course_reserve: is_on_course_reserve ?? this.is_on_course_reserve,
      is_right_result_exact: is_right_result_exact ?? this.is_right_result_exact,
      skip_num: skip_num ?? this.skip_num,
      cataloging_date_gmt: cataloging_date_gmt ?? this.cataloging_date_gmt,
      marc_type_code: marc_type_code ?? this.marc_type_code,
      title: title ?? this.title,
      record_creation_date_gmt: record_creation_date_gmt ?? this.record_creation_date_gmt,
      bib_record_id: bib_record_id ?? this.bib_record_id,
      item_record_id: item_record_id ?? this.item_record_id,
      items_display_order: items_display_order ?? this.items_display_order,
      bibs_display_order: bibs_display_order ?? this.bibs_display_order,
      barcode: barcode ?? this.barcode,
      icode1: icode1 ?? this.icode1,
      icode2: icode2 ?? this.icode2,
      itype_code_num: itype_code_num ?? this.itype_code_num,
      location_code: location_code ?? this.location_code,
      agency_code_num: agency_code_num ?? this.agency_code_num,
      item_status_code: item_status_code ?? this.item_status_code,
      is_inherit_loc: is_inherit_loc ?? this.is_inherit_loc,
      price: price ?? this.price,
      last_checkin_gmt: last_checkin_gmt ?? this.last_checkin_gmt,
      checkout_total: checkout_total ?? this.checkout_total,
      renewal_total: renewal_total ?? this.renewal_total,
      last_year_to_date_checkout_total: last_year_to_date_checkout_total ?? this.last_year_to_date_checkout_total,
      year_to_date_checkout_total: year_to_date_checkout_total ?? this.year_to_date_checkout_total,
      is_bib_hold: is_bib_hold ?? this.is_bib_hold,
      copy_num: copy_num ?? this.copy_num,
      checkout_statistic_group_code_num: checkout_statistic_group_code_num ?? this.checkout_statistic_group_code_num,
      last_patron_record_metadata_id: last_patron_record_metadata_id ?? this.last_patron_record_metadata_id,
      inventory_gmt: inventory_gmt ?? this.inventory_gmt,
      checkin_statistics_group_code_num: checkin_statistics_group_code_num ?? this.checkin_statistics_group_code_num,
      use3_count: use3_count ?? this.use3_count,
      last_checkout_gmt: last_checkout_gmt ?? this.last_checkout_gmt,
      internal_use_count: internal_use_count ?? this.internal_use_count,
      copy_use_count: copy_use_count ?? this.copy_use_count,
      item_message_code: item_message_code ?? this.item_message_code,
      opac_message_code: opac_message_code ?? this.opac_message_code,
      virtual_type_code: virtual_type_code ?? this.virtual_type_code,
      virtual_item_central_code_num: virtual_item_central_code_num ?? this.virtual_item_central_code_num,
      holdings_code: holdings_code ?? this.holdings_code,
      save_itype_code_num: save_itype_code_num ?? this.save_itype_code_num,
      save_location_code: save_location_code ?? this.save_location_code,
      save_checkout_total: save_checkout_total ?? this.save_checkout_total,
      old_location_code: old_location_code ?? this.old_location_code,
      distance_learning_status: distance_learning_status ?? this.distance_learning_status,
      is_suppressed: is_suppressed ?? this.is_suppressed,
      best_title: best_title ?? this.best_title,
      bib_level_code: bib_level_code ?? this.bib_level_code,
      material_code: material_code ?? this.material_code,
      publish_year: publish_year ?? this.publish_year,
      best_title_norm: best_title_norm ?? this.best_title_norm,
      best_author: best_author ?? this.best_author,
      best_author_norm: best_author_norm ?? this.best_author_norm,
      call_number: call_number ?? this.call_number,
      call_number_norm: call_number_norm ?? this.call_number_norm,
      record_id: record_id ?? this.record_id,
      varfield_id: varfield_id ?? this.varfield_id,
      field_type_code: field_type_code ?? this.field_type_code,
      marc_tag: marc_tag ?? this.marc_tag,
      marc_ind1: marc_ind1 ?? this.marc_ind1,
      marc_ind2: marc_ind2 ?? this.marc_ind2,
      occ_num: occ_num ?? this.occ_num,
      display_order: display_order ?? this.display_order,
      tag: tag ?? this.tag,
      content: content ?? this.content,
      varfield_type_code: varfield_type_code ?? this.varfield_type_code,
      field_content: field_content ?? this.field_content,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cover_url': cover_url,
      'id': id,
      'record_type_code': record_type_code,
      'record_num': record_num,
      'language_code': language_code,
      'bcode1': bcode1,
      'bcode2': bcode2,
      'bcode3': bcode3,
      'country_code': country_code,
      'is_available_at_library': is_available_at_library,
      'index_change_count': index_change_count,
      'allocation_rule_code': allocation_rule_code,
      'is_on_course_reserve': is_on_course_reserve,
      'is_right_result_exact': is_right_result_exact,
      'skip_num': skip_num,
      'cataloging_date_gmt': cataloging_date_gmt,
      'marc_type_code': marc_type_code,
      'title': title,
      'record_creation_date_gmt': record_creation_date_gmt,
      'bib_record_id': bib_record_id,
      'item_record_id': item_record_id,
      'items_display_order': items_display_order,
      'bibs_display_order': bibs_display_order,
      'barcode': barcode,
      'icode1': icode1,
      'icode2': icode2,
      'itype_code_num': itype_code_num,
      'location_code': location_code,
      'agency_code_num': agency_code_num,
      'item_status_code': item_status_code,
      'is_inherit_loc': is_inherit_loc,
      'price': price,
      'last_checkin_gmt': last_checkin_gmt,
      'checkout_total': checkout_total,
      'renewal_total': renewal_total,
      'last_year_to_date_checkout_total': last_year_to_date_checkout_total,
      'year_to_date_checkout_total': year_to_date_checkout_total,
      'is_bib_hold': is_bib_hold,
      'copy_num': copy_num,
      'checkout_statistic_group_code_num': checkout_statistic_group_code_num,
      'last_patron_record_metadata_id': last_patron_record_metadata_id,
      'inventory_gmt': inventory_gmt,
      'checkin_statistics_group_code_num': checkin_statistics_group_code_num,
      'use3_count': use3_count,
      'last_checkout_gmt': last_checkout_gmt,
      'internal_use_count': internal_use_count,
      'copy_use_count': copy_use_count,
      'item_message_code': item_message_code,
      'opac_message_code': opac_message_code,
      'virtual_type_code': virtual_type_code,
      'virtual_item_central_code_num': virtual_item_central_code_num,
      'holdings_code': holdings_code,
      'save_itype_code_num': save_itype_code_num,
      'save_location_code': save_location_code,
      'save_checkout_total': save_checkout_total,
      'old_location_code': old_location_code,
      'distance_learning_status': distance_learning_status,
      'is_suppressed': is_suppressed,
      'best_title': best_title,
      'bib_level_code': bib_level_code,
      'material_code': material_code,
      'publish_year': publish_year,
      'best_title_norm': best_title_norm,
      'best_author': best_author,
      'best_author_norm': best_author_norm,
      'call_number': call_number,
      'call_number_norm': call_number_norm,
      'record_id': record_id,
      'varfield_id': varfield_id,
      'field_type_code': field_type_code,
      'marc_tag': marc_tag,
      'marc_ind1': marc_ind1,
      'marc_ind2': marc_ind2,
      'occ_num': occ_num,
      'display_order': display_order,
      'tag': tag,
      'content': content,
      'varfield_type_code': varfield_type_code,
      'field_content': field_content,
      'images': images?.toMap(),
    };
  }

  factory MoreItemInfoList.fromMap(Map<String, dynamic> map) {
    return MoreItemInfoList(
      cover_url: map['cover_url'],
      id: map['id'],
      record_type_code: map['record_type_code'],
      record_num: map['record_num']?.toDouble(),
      language_code: map['language_code'],
      bcode1: map['bcode1'],
      bcode2: map['bcode2'],
      bcode3: map['bcode3'],
      country_code: map['country_code'],
      is_available_at_library: map['is_available_at_library'],
      index_change_count: map['index_change_count']?.toDouble(),
      allocation_rule_code: map['allocation_rule_code'],
      is_on_course_reserve: map['is_on_course_reserve'],
      is_right_result_exact: map['is_right_result_exact'],
      skip_num: map['skip_num']?.toDouble(),
      cataloging_date_gmt: map['cataloging_date_gmt'],
      marc_type_code: map['marc_type_code'],
      title: map['title'],
      record_creation_date_gmt: map['record_creation_date_gmt'],
      bib_record_id: map['bib_record_id'],
      item_record_id: map['item_record_id'],
      items_display_order: map['items_display_order']?.toDouble(),
      bibs_display_order: map['bibs_display_order']?.toDouble(),
      barcode: map['barcode'],
      icode1: map['icode1']?.toDouble(),
      icode2: map['icode2'],
      itype_code_num: map['itype_code_num']?.toDouble(),
      location_code: map['location_code'],
      agency_code_num: map['agency_code_num']?.toDouble(),
      item_status_code: map['item_status_code'],
      is_inherit_loc: map['is_inherit_loc'],
      price: map['price'],
      last_checkin_gmt: map['last_checkin_gmt'],
      checkout_total: map['checkout_total']?.toDouble(),
      renewal_total: map['renewal_total']?.toDouble(),
      last_year_to_date_checkout_total: map['last_year_to_date_checkout_total']?.toDouble(),
      year_to_date_checkout_total: map['year_to_date_checkout_total']?.toDouble(),
      is_bib_hold: map['is_bib_hold'],
      copy_num: map['copy_num']?.toDouble(),
      checkout_statistic_group_code_num: map['checkout_statistic_group_code_num']?.toDouble(),
      last_patron_record_metadata_id: map['last_patron_record_metadata_id'],
      inventory_gmt: map['inventory_gmt'],
      checkin_statistics_group_code_num: map['checkin_statistics_group_code_num']?.toDouble(),
      use3_count: map['use3_count']?.toDouble(),
      last_checkout_gmt: map['last_checkout_gmt'],
      internal_use_count: map['internal_use_count']?.toDouble(),
      copy_use_count: map['copy_use_count']?.toDouble(),
      item_message_code: map['item_message_code'],
      opac_message_code: map['opac_message_code'],
      virtual_type_code: map['virtual_type_code'],
      virtual_item_central_code_num: map['virtual_item_central_code_num']?.toDouble(),
      holdings_code: map['holdings_code'],
      save_itype_code_num: map['save_itype_code_num'],
      save_location_code: map['save_location_code'],
      save_checkout_total: map['save_checkout_total'],
      old_location_code: map['old_location_code'],
      distance_learning_status: map['distance_learning_status']?.toDouble(),
      is_suppressed: map['is_suppressed'],
      best_title: map['best_title'],
      bib_level_code: map['bib_level_code'],
      material_code: map['material_code'],
      publish_year: map['publish_year']?.toDouble(),
      best_title_norm: map['best_title_norm'],
      best_author: map['best_author'],
      best_author_norm: map['best_author_norm'],
      call_number: map['call_number'],
      call_number_norm: map['call_number_norm'],
      record_id: map['record_id'],
      varfield_id: map['varfield_id'],
      field_type_code: map['field_type_code'],
      marc_tag: map['marc_tag'],
      marc_ind1: map['marc_ind1'],
      marc_ind2: map['marc_ind2'],
      occ_num: map['occ_num']?.toDouble(),
      display_order: map['display_order']?.toDouble(),
      tag: map['tag'],
      content: map['content'],
      varfield_type_code: map['varfield_type_code'],
      field_content: map['field_content'],
      images: map['images'] != null ? ImageModel.fromMap(map['images']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MoreItemInfoList.fromJson(String source) => MoreItemInfoList.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MoreItemInfoList(cover_url: $cover_url, id: $id, record_type_code: $record_type_code, record_num: $record_num, language_code: $language_code, bcode1: $bcode1, bcode2: $bcode2, bcode3: $bcode3, country_code: $country_code, is_available_at_library: $is_available_at_library, index_change_count: $index_change_count, allocation_rule_code: $allocation_rule_code, is_on_course_reserve: $is_on_course_reserve, is_right_result_exact: $is_right_result_exact, skip_num: $skip_num, cataloging_date_gmt: $cataloging_date_gmt, marc_type_code: $marc_type_code, title: $title, record_creation_date_gmt: $record_creation_date_gmt, bib_record_id: $bib_record_id, item_record_id: $item_record_id, items_display_order: $items_display_order, bibs_display_order: $bibs_display_order, barcode: $barcode, icode1: $icode1, icode2: $icode2, itype_code_num: $itype_code_num, location_code: $location_code, agency_code_num: $agency_code_num, item_status_code: $item_status_code, is_inherit_loc: $is_inherit_loc, price: $price, last_checkin_gmt: $last_checkin_gmt, checkout_total: $checkout_total, renewal_total: $renewal_total, last_year_to_date_checkout_total: $last_year_to_date_checkout_total, year_to_date_checkout_total: $year_to_date_checkout_total, is_bib_hold: $is_bib_hold, copy_num: $copy_num, checkout_statistic_group_code_num: $checkout_statistic_group_code_num, last_patron_record_metadata_id: $last_patron_record_metadata_id, inventory_gmt: $inventory_gmt, checkin_statistics_group_code_num: $checkin_statistics_group_code_num, use3_count: $use3_count, last_checkout_gmt: $last_checkout_gmt, internal_use_count: $internal_use_count, copy_use_count: $copy_use_count, item_message_code: $item_message_code, opac_message_code: $opac_message_code, virtual_type_code: $virtual_type_code, virtual_item_central_code_num: $virtual_item_central_code_num, holdings_code: $holdings_code, save_itype_code_num: $save_itype_code_num, save_location_code: $save_location_code, save_checkout_total: $save_checkout_total, old_location_code: $old_location_code, distance_learning_status: $distance_learning_status, is_suppressed: $is_suppressed, best_title: $best_title, bib_level_code: $bib_level_code, material_code: $material_code, publish_year: $publish_year, best_title_norm: $best_title_norm, best_author: $best_author, best_author_norm: $best_author_norm, call_number: $call_number, call_number_norm: $call_number_norm, record_id: $record_id, varfield_id: $varfield_id, field_type_code: $field_type_code, marc_tag: $marc_tag, marc_ind1: $marc_ind1, marc_ind2: $marc_ind2, occ_num: $occ_num, display_order: $display_order, tag: $tag, content: $content, varfield_type_code: $varfield_type_code, field_content: $field_content, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is MoreItemInfoList &&
      other.cover_url == cover_url &&
      other.id == id &&
      other.record_type_code == record_type_code &&
      other.record_num == record_num &&
      other.language_code == language_code &&
      other.bcode1 == bcode1 &&
      other.bcode2 == bcode2 &&
      other.bcode3 == bcode3 &&
      other.country_code == country_code &&
      other.is_available_at_library == is_available_at_library &&
      other.index_change_count == index_change_count &&
      other.allocation_rule_code == allocation_rule_code &&
      other.is_on_course_reserve == is_on_course_reserve &&
      other.is_right_result_exact == is_right_result_exact &&
      other.skip_num == skip_num &&
      other.cataloging_date_gmt == cataloging_date_gmt &&
      other.marc_type_code == marc_type_code &&
      other.title == title &&
      other.record_creation_date_gmt == record_creation_date_gmt &&
      other.bib_record_id == bib_record_id &&
      other.item_record_id == item_record_id &&
      other.items_display_order == items_display_order &&
      other.bibs_display_order == bibs_display_order &&
      other.barcode == barcode &&
      other.icode1 == icode1 &&
      other.icode2 == icode2 &&
      other.itype_code_num == itype_code_num &&
      other.location_code == location_code &&
      other.agency_code_num == agency_code_num &&
      other.item_status_code == item_status_code &&
      other.is_inherit_loc == is_inherit_loc &&
      other.price == price &&
      other.last_checkin_gmt == last_checkin_gmt &&
      other.checkout_total == checkout_total &&
      other.renewal_total == renewal_total &&
      other.last_year_to_date_checkout_total == last_year_to_date_checkout_total &&
      other.year_to_date_checkout_total == year_to_date_checkout_total &&
      other.is_bib_hold == is_bib_hold &&
      other.copy_num == copy_num &&
      other.checkout_statistic_group_code_num == checkout_statistic_group_code_num &&
      other.last_patron_record_metadata_id == last_patron_record_metadata_id &&
      other.inventory_gmt == inventory_gmt &&
      other.checkin_statistics_group_code_num == checkin_statistics_group_code_num &&
      other.use3_count == use3_count &&
      other.last_checkout_gmt == last_checkout_gmt &&
      other.internal_use_count == internal_use_count &&
      other.copy_use_count == copy_use_count &&
      other.item_message_code == item_message_code &&
      other.opac_message_code == opac_message_code &&
      other.virtual_type_code == virtual_type_code &&
      other.virtual_item_central_code_num == virtual_item_central_code_num &&
      other.holdings_code == holdings_code &&
      other.save_itype_code_num == save_itype_code_num &&
      other.save_location_code == save_location_code &&
      other.save_checkout_total == save_checkout_total &&
      other.old_location_code == old_location_code &&
      other.distance_learning_status == distance_learning_status &&
      other.is_suppressed == is_suppressed &&
      other.best_title == best_title &&
      other.bib_level_code == bib_level_code &&
      other.material_code == material_code &&
      other.publish_year == publish_year &&
      other.best_title_norm == best_title_norm &&
      other.best_author == best_author &&
      other.best_author_norm == best_author_norm &&
      other.call_number == call_number &&
      other.call_number_norm == call_number_norm &&
      other.record_id == record_id &&
      other.varfield_id == varfield_id &&
      other.field_type_code == field_type_code &&
      other.marc_tag == marc_tag &&
      other.marc_ind1 == marc_ind1 &&
      other.marc_ind2 == marc_ind2 &&
      other.occ_num == occ_num &&
      other.display_order == display_order &&
      other.tag == tag &&
      other.content == content &&
      other.varfield_type_code == varfield_type_code &&
      other.field_content == field_content &&
      other.images == images;
  }

  @override
  int get hashCode {
    return cover_url.hashCode ^
      id.hashCode ^
      record_type_code.hashCode ^
      record_num.hashCode ^
      language_code.hashCode ^
      bcode1.hashCode ^
      bcode2.hashCode ^
      bcode3.hashCode ^
      country_code.hashCode ^
      is_available_at_library.hashCode ^
      index_change_count.hashCode ^
      allocation_rule_code.hashCode ^
      is_on_course_reserve.hashCode ^
      is_right_result_exact.hashCode ^
      skip_num.hashCode ^
      cataloging_date_gmt.hashCode ^
      marc_type_code.hashCode ^
      title.hashCode ^
      record_creation_date_gmt.hashCode ^
      bib_record_id.hashCode ^
      item_record_id.hashCode ^
      items_display_order.hashCode ^
      bibs_display_order.hashCode ^
      barcode.hashCode ^
      icode1.hashCode ^
      icode2.hashCode ^
      itype_code_num.hashCode ^
      location_code.hashCode ^
      agency_code_num.hashCode ^
      item_status_code.hashCode ^
      is_inherit_loc.hashCode ^
      price.hashCode ^
      last_checkin_gmt.hashCode ^
      checkout_total.hashCode ^
      renewal_total.hashCode ^
      last_year_to_date_checkout_total.hashCode ^
      year_to_date_checkout_total.hashCode ^
      is_bib_hold.hashCode ^
      copy_num.hashCode ^
      checkout_statistic_group_code_num.hashCode ^
      last_patron_record_metadata_id.hashCode ^
      inventory_gmt.hashCode ^
      checkin_statistics_group_code_num.hashCode ^
      use3_count.hashCode ^
      last_checkout_gmt.hashCode ^
      internal_use_count.hashCode ^
      copy_use_count.hashCode ^
      item_message_code.hashCode ^
      opac_message_code.hashCode ^
      virtual_type_code.hashCode ^
      virtual_item_central_code_num.hashCode ^
      holdings_code.hashCode ^
      save_itype_code_num.hashCode ^
      save_location_code.hashCode ^
      save_checkout_total.hashCode ^
      old_location_code.hashCode ^
      distance_learning_status.hashCode ^
      is_suppressed.hashCode ^
      best_title.hashCode ^
      bib_level_code.hashCode ^
      material_code.hashCode ^
      publish_year.hashCode ^
      best_title_norm.hashCode ^
      best_author.hashCode ^
      best_author_norm.hashCode ^
      call_number.hashCode ^
      call_number_norm.hashCode ^
      record_id.hashCode ^
      varfield_id.hashCode ^
      field_type_code.hashCode ^
      marc_tag.hashCode ^
      marc_ind1.hashCode ^
      marc_ind2.hashCode ^
      occ_num.hashCode ^
      display_order.hashCode ^
      tag.hashCode ^
      content.hashCode ^
      varfield_type_code.hashCode ^
      field_content.hashCode ^
      images.hashCode;
  }
}
