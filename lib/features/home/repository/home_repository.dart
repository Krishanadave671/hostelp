import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hostelp/core/constants/firebase_constants.dart';
import 'package:hostelp/core/providers/firebase_providers.dart';
import 'package:hostelp/models/hostel_model.dart';

// create riverpod provider 
final homeRepositoryProvider = Provider((ref) {
    return HomeRepository(firestore: ref.watch(firebaseProvider));  
},)

/*
* class for HomeRepository, to handle calls to firebase and firestore 
* @Params firestore 
* type - FirebaseFirestore , to provide instance of firestore ,
*/
class HomeRepository {
    // instances of class  
    final FirebaseFirestore _firestore;

    HomeRepository({required FirebaseFirestore firestore}) : _firestore = firestore; 
    
    Future<Hostel> getHostelDetail(String hostelID) async {
        try {
            var hostelDocs = await _hostels.where("hostel_id",isEqualTo: hostelID);
            
        } on FirebaseException catch (e) {
            throw e.message!;
        }
    }






    // collection reference for firestore 
    CollectionReference get _hostels => _firestore.collection(FirebaseConstants.hostelCollection);
    CollectionReference get _pgs => _firestore.collection(FirebaseConstants.pgCollection);
    CollectionReference get _user => _firestore.collection(FirebaseConstants.userCollection);
}
