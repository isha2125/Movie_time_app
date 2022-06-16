import 'package:flutter/foundation.dart';

class TheatreModel {
  final String id;
  final String name;
  
  final List<String> facilites;
  final String fullAddress;
  final List<String> timings;
  final List<String> avalableScreens;
  TheatreModel({
    required this.id,
    required this.name,
    this.facilites = const [
      "Cancel",
      "Parking",
      "Hotel",
      "Park",
    ],
    this.fullAddress = "City Mall, 2 nd floor Park Road, Civil Lines, Golghar, Gorakhpur, Uttar Pradesh 273001",
    this.timings = const [
      "10:00 AM",
      "1:30 PM",
      "6:30 PM",
      "9:30 PM",
      "12:30 AM",
    ],
    this.avalableScreens = const [
      "3D",
      "2D",
    ],
  });

  TheatreModel copyWith({
    String? id,
    String? name,
    
    List<String>? facilites,
    String? fullAddress,
    List<String>? timings,
    List<String>? avalableScreens,
  }) {
    return TheatreModel(
      id: id ?? this.id,
      name: name ?? this.name,
      facilites: facilites ?? this.facilites,
      fullAddress: fullAddress ?? this.fullAddress,
      timings: timings ?? this.timings,
      avalableScreens: avalableScreens ?? this.avalableScreens,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'facilites': facilites,
      'fullAddress': fullAddress,
      'timings': timings,
      'avalableScreens': avalableScreens,
    };
  }

  factory TheatreModel.fromMap(Map<String, dynamic> map) {
    return TheatreModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      facilites: List<String>.from(map['facilites']),
      fullAddress: map['fullAddress'] ?? '',
      timings: List<String>.from(map['timings']),
      avalableScreens: List<String>.from(map['avalableScreens']),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TheatreModel &&
        other.id == id &&
        other.name == name &&
        listEquals(other.facilites, facilites) &&
        other.fullAddress == fullAddress &&
        listEquals(other.timings, timings) &&
        listEquals(other.avalableScreens, avalableScreens);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        facilites.hashCode ^
        fullAddress.hashCode ^
        timings.hashCode ^
        avalableScreens.hashCode;
  }
}