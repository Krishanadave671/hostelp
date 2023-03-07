import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hostelp/core/constants/firebase_constants.dart';
import 'package:hostelp/core/providers/firebase_providers.dart';
import 'package:hostelp/features/search/utils.dart';
import 'package:hostelp/models/hostel_model.dart';
import 'package:fpdart/fpdart.dart';
import 'dart:math';
import 'package:hostelp/core/providers/utils.dart' as misc;

// create riverpod provider 
final homeRepositoryProvider = Provider((ref) {
    return HomeRepository(firestore: ref.watch(firestoreProvider));  
},);


/*
* class for HomeRepository, to handle calls to firebase and firestore 
* @Params firestore 
* type - FirebaseFirestore , to provide instance of firestore ,
*/
class HomeRepository {
    // instances of class  
    final FirebaseFirestore _firestore;

    HomeRepository({required FirebaseFirestore firestore}) : _firestore = firestore; 
    /*
    * Description - get all details of particular hostel 
    *
    * @Params hostelID - ID of the hostel that we want to get details of!
    */ 
    Stream<Hostel> getHostelDetail(String hostelID) {
        return _hostels.doc(hostelID).snapshots().map((event) =>
            Hostel.fromMap(event.data() as Map<String,dynamic>));
    }
    /*
    * Description - get the list of all the hostels nearby, with the help of latitude and longitude 
    * and amenitites user wants  
    *
    * @params lat - latitude of selected loc`ation 
    * @params long - longitude of selected location 
    * @params range - maximum range from selected point in km , to get the hostels within that area 
    * @params amenities - list of filters applied in search 
    */
    Stream<List<Hostel>> getNearbyHostelByLatLong(String lat, String long,double radius, List<String> amenities){
        final double distance = radius*1000;// kms to metres 
        final double latCenter = double.parse(lat);
        final double longCenter = double.parse(long);
         // Calculate the lat/long offsets for a bounding box around the center point
        final double latOffset = misc.Utils.degrees(distance / 111319.9);
        // 1 degree of latitude = 111.3199 km
        final double longOffset = misc.Utils.degrees(distance / (111319.9 * cos(misc.Utils.radians(latCenter)))); 
        // 1 degree of longitude = 111.3199 km * cos(latitude)
        final double latMin = latCenter + latOffset;
        final double latMax = latCenter - latOffset;
        final double longMin = longCenter + longOffset;
        final double longMax = longCenter - longOffset;
        return _hostels
        .where('hostelLatitude', isGreaterThanOrEqualTo: latMin)
        .where('hostelLatitude', isLessThanOrEqualTo: latMax)
        .where('hostelLongitude', isGreaterThanOrEqualTo: longMin)
        .where('hostelLongitude', isLessThanOrEqualTo: longMax)
        .snapshots()
        .map((querySnapshot) {
            return querySnapshot.docs
                .map((doc) => Hostel.fromMap(doc.data() as Map<String,dynamic>))
                .toList();
        });
    }
    
    // collection reference for firestore 
    CollectionReference get _hostels => _firestore.collection(FirebaseConstants.hostelCollection);
    CollectionReference get _pgs => _firestore.collection(FirebaseConstants.pgCollection);
    CollectionReference get _user => _firestore.collection(FirebaseConstants.userCollection);
}
