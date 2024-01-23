import 'dart:convert';

import 'package:flutter/foundation.dart';

class HoldsFormModel {
  HoldshelfModel? holdshelf;
  ItemAsVolumeModel? itemsAsVolumes;
  VolumeModel? volumes;
  HoldsFormModel({
    this.holdshelf,
    this.itemsAsVolumes,
    this.volumes,
  });

  HoldsFormModel copyWith({
    HoldshelfModel? holdshelf,
    ItemAsVolumeModel? itemsAsVolumes,
    VolumeModel? volumes,
  }) {
    return HoldsFormModel(
      holdshelf: holdshelf ?? this.holdshelf,
      itemsAsVolumes: itemsAsVolumes ?? this.itemsAsVolumes,
      volumes: volumes ?? this.volumes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'holdshelf': holdshelf?.toMap(),
      'itemsAsVolumes': itemsAsVolumes?.toMap(),
      'volumes': volumes?.toMap(),
    };
  }

  factory HoldsFormModel.fromMap(Map<String, dynamic> map) {
    return HoldsFormModel(
      holdshelf: map['holdshelf'] != null ? HoldshelfModel.fromMap(map['holdshelf']) : null,
      itemsAsVolumes: map['itemsAsVolumes'] != null ? ItemAsVolumeModel.fromMap(map['itemsAsVolumes']) : null,
      volumes: map['volumes'] != null ? VolumeModel.fromMap(map['volumes']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HoldsFormModel.fromJson(String source) => HoldsFormModel.fromMap(json.decode(source));

  @override
  String toString() => 'HoldsFormModel(holdshelf: $holdshelf, itemsAsVolumes: $itemsAsVolumes, volumes: $volumes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HoldsFormModel &&
      other.holdshelf == holdshelf &&
      other.itemsAsVolumes == itemsAsVolumes &&
      other.volumes == volumes;
  }

  @override
  int get hashCode => holdshelf.hashCode ^ itemsAsVolumes.hashCode ^ volumes.hashCode;
}

class HoldshelfModel {
  List<LocationModel>? locations;
  LocationModel? selected;
  HoldshelfModel({
    this.locations,
    this.selected,
  });

  HoldshelfModel copyWith({
    List<LocationModel>? locations,
    LocationModel? selected,
  }) {
    return HoldshelfModel(
      locations: locations ?? this.locations,
      selected: selected ?? this.selected,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'locations': locations?.map((x) => x.toMap()).toList(),
      'selected': selected?.toMap(),
    };
  }

  factory HoldshelfModel.fromMap(Map<String, dynamic> map) {
    return HoldshelfModel(
      locations: map['locations'] != null ? List<LocationModel>.from(map['locations']?.map((x) => LocationModel.fromMap(x))) : null,
      selected: map['selected'] != null ? LocationModel.fromMap(map['selected']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory HoldshelfModel.fromJson(String source) => HoldshelfModel.fromMap(json.decode(source));

  @override
  String toString() => 'HoldshelfModel(locations: $locations, selected: $selected)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is HoldshelfModel &&
      listEquals(other.locations, locations) &&
      other.selected == selected;
  }

  @override
  int get hashCode => locations.hashCode ^ selected.hashCode;
}

class LocationModel {
  String? code;
  String? name;
  LocationModel({
    this.code,
    this.name,
  });

  LocationModel copyWith({
    String? code,
    String? name,
  }) {
    return LocationModel(
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

  factory LocationModel.fromMap(Map<String, dynamic> map) {
    return LocationModel(
      code: map['code'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LocationModel.fromJson(String source) => LocationModel.fromMap(json.decode(source));

  @override
  String toString() => 'LocationModel(code: $code, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is LocationModel &&
      other.code == code &&
      other.name == name;
  }

  @override
  int get hashCode => code.hashCode ^ name.hashCode;
}

class ItemAsVolumeModel {
  double? id;
  bool? available;
  LocationModel? location;
  ItemStatusModel? status;
  String? callNumber;
  ItemAsVolumeModel({
    this.id,
    this.available,
    this.location,
    this.status,
    this.callNumber,
  });

  ItemAsVolumeModel copyWith({
    double? id,
    bool? available,
    LocationModel? location,
    ItemStatusModel? status,
    String? callNumber,
  }) {
    return ItemAsVolumeModel(
      id: id ?? this.id,
      available: available ?? this.available,
      location: location ?? this.location,
      status: status ?? this.status,
      callNumber: callNumber ?? this.callNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'available': available,
      'location': location?.toMap(),
      'status': status?.toMap(),
      'callNumber': callNumber,
    };
  }

  factory ItemAsVolumeModel.fromMap(Map<String, dynamic> map) {
    return ItemAsVolumeModel(
      id: map['id']?.toDouble(),
      available: map['available'],
      location: map['location'] != null ? LocationModel.fromMap(map['location']) : null,
      status: map['status'] != null ? ItemStatusModel.fromMap(map['status']) : null,
      callNumber: map['callNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemAsVolumeModel.fromJson(String source) => ItemAsVolumeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ItemAsVolumeModel(id: $id, available: $available, location: $location, status: $status, callNumber: $callNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemAsVolumeModel &&
      other.id == id &&
      other.available == available &&
      other.location == location &&
      other.status == status &&
      other.callNumber == callNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      available.hashCode ^
      location.hashCode ^
      status.hashCode ^
      callNumber.hashCode;
  }
}

class ItemStatusModel {
  String? code;
  String? display;
  String? duedate;
  ItemStatusModel({
    this.code,
    this.display,
    this.duedate,
  });

  ItemStatusModel copyWith({
    String? code,
    String? display,
    String? duedate,
  }) {
    return ItemStatusModel(
      code: code ?? this.code,
      display: display ?? this.display,
      duedate: duedate ?? this.duedate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'display': display,
      'duedate': duedate,
    };
  }

  factory ItemStatusModel.fromMap(Map<String, dynamic> map) {
    return ItemStatusModel(
      code: map['code'],
      display: map['display'],
      duedate: map['duedate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemStatusModel.fromJson(String source) => ItemStatusModel.fromMap(json.decode(source));

  @override
  String toString() => 'ItemStatusModel(code: $code, display: $display, duedate: $duedate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ItemStatusModel &&
      other.code == code &&
      other.display == display &&
      other.duedate == duedate;
  }

  @override
  int get hashCode => code.hashCode ^ display.hashCode ^ duedate.hashCode;
}

class VolumeModel {
  double? id;
  String? volume;
  VolumeModel({
    this.id,
    this.volume,
  });

  VolumeModel copyWith({
    double? id,
    String? volume,
  }) {
    return VolumeModel(
      id: id ?? this.id,
      volume: volume ?? this.volume,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'volume': volume,
    };
  }

  factory VolumeModel.fromMap(Map<String, dynamic> map) {
    return VolumeModel(
      id: map['id']?.toDouble(),
      volume: map['volume'],
    );
  }

  String toJson() => json.encode(toMap());

  factory VolumeModel.fromJson(String source) => VolumeModel.fromMap(json.decode(source));

  @override
  String toString() => 'VolumeModel(id: $id, volume: $volume)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is VolumeModel &&
      other.id == id &&
      other.volume == volume;
  }

  @override
  int get hashCode => id.hashCode ^ volume.hashCode;
}




