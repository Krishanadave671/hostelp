// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Room {
    final String roomNo;
    final String floorNo;
    final String roomCapacity;
    final List<String> roomOccupants;
    final String gender;
  Room({
    required this.roomNo,
    required this.floorNo,
    required this.roomCapacity,
    required this.roomOccupants,
    required this.gender,
  });

  Room copyWith({
    String? roomNo,
    String? floorNo,
    String? roomCapacity,
    List<String>? roomOccupants,
    String? gender,
  }) {
    return Room(
      roomNo: roomNo ?? this.roomNo,
      floorNo: floorNo ?? this.floorNo,
      roomCapacity: roomCapacity ?? this.roomCapacity,
      roomOccupants: roomOccupants ?? this.roomOccupants,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roomNo': roomNo,
      'floorNo': floorNo,
      'roomCapacity': roomCapacity,
      'roomOccupants': roomOccupants,
      'gender': gender,
    };
  }


factory Room.fromMap(Map<String, dynamic> map) {
  return Room(
    roomNo: map['roomNo'] as String,
    floorNo: map['floorNo'] as String,
    roomCapacity: map['roomCapacity'] as String,
    roomOccupants: List<String>.from(map['roomOccupants'] as List<String>),
    gender: map['gender'] as String,
  );
}


  String toJson() => json.encode(toMap());

  factory Room.fromJson(String source) => Room.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Room(roomNo: $roomNo, floorNo: $floorNo, roomCapacity: $roomCapacity, roomOccupants: $roomOccupants, gender: $gender)';
  }

  @override
  bool operator ==(covariant Room other) {
    if (identical(this, other)) return true;
  
    return 
      other.roomNo == roomNo &&
      other.floorNo == floorNo &&
      other.roomCapacity == roomCapacity &&
      listEquals(other.roomOccupants, roomOccupants) &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return roomNo.hashCode ^
      floorNo.hashCode ^
      roomCapacity.hashCode ^
      roomOccupants.hashCode ^
      gender.hashCode;
  }
}
