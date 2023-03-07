// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class User {
    final String userID; 
    final String userName;
    final String userEmail;
    final String userAddress;
    final String userImage;
    final String userGender;
    final List<String> userTransactionHistory;
    final String userInstitution;
    final String userPhone;
    final String userProfession;
  User({
    required this.userID,
    required this.userName,
    required this.userEmail,
    required this.userAddress,
    required this.userImage,
    required this.userGender,
    required this.userTransactionHistory,
    required this.userInstitution,
    required this.userPhone,
    required this.userProfession,
  });

  User copyWith({
    String? userID,
    String? userName,
    String? userEmail,
    String? userAddress,
    String? userImage,
    String? userGender,
    List<String>? userTransactionHistory,
    String? userInstitution,
    String? userPhone,
    String? userProfession,
  }) {
    return User(
      userID: userID ?? this.userID,
      userName: userName ?? this.userName,
      userEmail: userEmail ?? this.userEmail,
      userAddress: userAddress ?? this.userAddress,
      userImage: userImage ?? this.userImage,
      userGender: userGender ?? this.userGender,
      userTransactionHistory: userTransactionHistory ?? this.userTransactionHistory,
      userInstitution: userInstitution ?? this.userInstitution,
      userPhone: userPhone ?? this.userPhone,
      userProfession: userProfession ?? this.userProfession,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userID': userID,
      'userName': userName,
      'userEmail': userEmail,
      'userAddress': userAddress,
      'userImage': userImage,
      'userGender': userGender,
      'userTransactionHistory': userTransactionHistory,
      'userInstitution': userInstitution,
      'userPhone': userPhone,
      'userProfession': userProfession,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userID: map['userID'] as String,
      userName: map['userName'] as String,
      userEmail: map['userEmail'] as String,
      userAddress: map['userAddress'] as String,
      userImage: map['userImage'] as String,
      userGender: map['userGender'] as String,
      userTransactionHistory: List<String>.from(map['userTransactionHistory'] as List<String>),
      userInstitution: map['userInstitution'] as String,
      userPhone: map['userPhone'] as String,
      userProfession: map['userProfession'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(userID: $userID, userName: $userName, userEmail: $userEmail, userAddress: $userAddress, userImage: $userImage, userGender: $userGender, userTransactionHistory: $userTransactionHistory, userInstitution: $userInstitution, userPhone: $userPhone, userProfession: $userProfession)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;
  
    return 
      other.userID == userID &&
      other.userName == userName &&
      other.userEmail == userEmail &&
      other.userAddress == userAddress &&
      other.userImage == userImage &&
      other.userGender == userGender &&
      listEquals(other.userTransactionHistory, userTransactionHistory) &&
      other.userInstitution == userInstitution &&
      other.userPhone == userPhone &&
      other.userProfession == userProfession;
  }

  @override
  int get hashCode {
    return userID.hashCode ^
      userName.hashCode ^
      userEmail.hashCode ^
      userAddress.hashCode ^
      userImage.hashCode ^
      userGender.hashCode ^
      userTransactionHistory.hashCode ^
      userInstitution.hashCode ^
      userPhone.hashCode ^
      userProfession.hashCode;
  }
}
