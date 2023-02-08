import 'package:json_annotation/json_annotation.dart';
part 'hostel_model.g.dart';

@JsonSerializable()
class HostelModel {
  final String hostelName;
  final String amount;
  final String location;
  final String rating;
  final String imageUrl;
  final bool availability;


  HostelModel({
    required this.hostelName,
    required this.amount,
    required this.location,
    required this.rating,
    required this.imageUrl,
    required this.availability,
  });






  
}
