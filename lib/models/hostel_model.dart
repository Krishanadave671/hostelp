// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Hostel {

    final String hostelID; 
    final String hostelName; 
    final String hostelAddress; 
    final String hostelLatitude; 
    final String hostelLongitude; 
    final String hostelDescription; 
    final String hostelRulesRegulations;
    final List<String> hostelAmenities; 
    final List<String> hostelReviews; 
    final List<String> hostelContacts;
    final List<String> hostelImages; 
  Hostel({
    required this.hostelID,
    required this.hostelName,
    required this.hostelAddress,
    required this.hostelLatitude,
    required this.hostelLongitude,
    required this.hostelDescription,
    required this.hostelRulesRegulations,
    required this.hostelAmenities,
    required this.hostelReviews,
    required this.hostelContacts,
    required this.hostelImages,
  });

  Hostel copyWith({
    String? hostelID,
    String? hostelName,
    String? hostelAddress,
    String? hostelLatitude,
    String? hostelLongitude,
    String? hostelDescription,
    String? hostelRulesRegulations,
    List<String>? hostelAmenities,
    List<String>? hostelReviews,
    List<String>? hostelContacts,
    List<String>? hostelImages,
  }) {
    return Hostel(
      hostelID: hostelID ?? this.hostelID,
      hostelName: hostelName ?? this.hostelName,
      hostelAddress: hostelAddress ?? this.hostelAddress,
      hostelLatitude: hostelLatitude ?? this.hostelLatitude,
      hostelLongitude: hostelLongitude ?? this.hostelLongitude,
      hostelDescription: hostelDescription ?? this.hostelDescription,
      hostelRulesRegulations: hostelRulesRegulations ?? this.hostelRulesRegulations,
      hostelAmenities: hostelAmenities ?? this.hostelAmenities,
      hostelReviews: hostelReviews ?? this.hostelReviews,
      hostelContacts: hostelContacts ?? this.hostelContacts,
      hostelImages: hostelImages ?? this.hostelImages,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostelID': hostelID,
      'hostelName': hostelName,
      'hostelAddress': hostelAddress,
      'hostelLatitude': hostelLatitude,
      'hostelLongitude': hostelLongitude,
      'hostelDescription': hostelDescription,
      'hostelRulesRegulations': hostelRulesRegulations,
      'hostelAmenities': hostelAmenities,
      'hostelReviews': hostelReviews,
      'hostelContacts': hostelContacts,
      'hostelImages': hostelImages,
    };
  }

  factory Hostel.fromMap(Map<String, dynamic> map) {
    return Hostel(
      hostelID: map['hostelID'] as String,
      hostelName: map['hostelName'] as String,
      hostelAddress: map['hostelAddress'] as String,
      hostelLatitude: map['hostelLatitude'] as String,
      hostelLongitude: map['hostelLongitude'] as String,
      hostelDescription: map['hostelDescription'] as String,
      hostelRulesRegulations: map['hostelRulesRegulations'] as String,
      hostelAmenities: List<String>.from(map['hostelAmenities'] as List<String>),
      hostelReviews: List<String>.from(map['hostelReviews'] as List<String>),
      hostelContacts: List<String>.from(map['hostelContacts'] as List<String>),
      hostelImages: List<String>.from(map['hostelImages'] as List<String>),
    );
  }

   String toJson() => json.encode(toMap());

   factory Hostel.fromJson(String source) => Hostel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hostel(hostelID: $hostelID, hostelName: $hostelName, hostelAddress: $hostelAddress, hostelLatitude: $hostelLatitude, hostelLongitude: $hostelLongitude, hostelDescription: $hostelDescription, hostelRulesRegulations: $hostelRulesRegulations, hostelAmenities: $hostelAmenities, hostelReviews: $hostelReviews, hostelContacts: $hostelContacts, hostelImages: $hostelImages)';
  }

  @override
  bool operator ==(covariant Hostel other) {
    if (identical(this, other)) return true;
  
    return 
      other.hostelID == hostelID &&
      other.hostelName == hostelName &&
      other.hostelAddress == hostelAddress &&
      other.hostelLatitude == hostelLatitude &&
      other.hostelLongitude == hostelLongitude &&
      other.hostelDescription == hostelDescription &&
      other.hostelRulesRegulations == hostelRulesRegulations &&
      listEquals(other.hostelAmenities, hostelAmenities) &&
      listEquals(other.hostelReviews, hostelReviews) &&
      listEquals(other.hostelContacts, hostelContacts) &&
      listEquals(other.hostelImages, hostelImages);
  }

  @override
  int get hashCode {
    return hostelID.hashCode ^
      hostelName.hashCode ^
      hostelAddress.hashCode ^
      hostelLatitude.hashCode ^
      hostelLongitude.hashCode ^
      hostelDescription.hashCode ^
      hostelRulesRegulations.hashCode ^
      hostelAmenities.hashCode ^
      hostelReviews.hashCode ^
      hostelContacts.hashCode ^
      hostelImages.hashCode;
  }
}
