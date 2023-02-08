// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HostelModel _$HostelModelFromJson(Map<String, dynamic> json) => HostelModel(
      hostelName: json['hostelName'] as String,
      amount: json['amount'] as String,
      location: json['location'] as String,
      rating: json['rating'] as String,
      imageUrl: json['imageUrl'] as String,
      availability: json['availability'] as bool,
    );

Map<String, dynamic> _$HostelModelToJson(HostelModel instance) =>
    <String, dynamic>{
      'hostelName': instance.hostelName,
      'amount': instance.amount,
      'location': instance.location,
      'rating': instance.rating,
      'imageUrl': instance.imageUrl,
      'availability': instance.availability,
    };
