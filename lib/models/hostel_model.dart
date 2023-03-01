class Hostel{

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
        required this.hostelDescription,
        required this.hostelReviews,
        required this.hostelContacts,
        required this.hostelImages,
        required this.hostelAddress,
        required this.hostelLatitude,
        required this.hostelLongitude,
        required this.hostelAmenities,
        required this.hostelRulesRegulations,
    });
    Hostel mapRawData({
        String? hostel_name,
        String? hostel_id,
        String? hostel_address,
        String? hostel_latitiude, 
        String? hostel_longitude,
        String? hostel_description, 
        String? hostel_rules_regulations,
        List<String>? hostel_amenities,
        List<String>? hostel_reviews, 
        List<String>? hostel_contacts,
        List<String>? hostel_images
    }){
        return Hostel(
            hostelName: hostel_name ?? this.hostelName, 
            hostelID: hostel_id ?? this.hostelID,
            hostelImages: hostel_images ?? this.hostelImages,
            hostelAddress: hostel_address ?? this.hostelAddress,
            hostelReviews: hostel_reviews  ?? this.hostelReviews,
            hostelContacts: hostel_contacts ?? this.hostelContacts,
            hostelLatitude: hostel_latitiude ?? this.hostelLatitude,
            hostelLongitude: hostel_longitude ?? this.hostelLongitude,
            hostelAmenities: hostel_amenities ?? this.hostelAmenities,
            hostelDescription: hostel_description ?? this.hostelDescription, 
            hostelRulesRegulations: hostel_rules_regulations ?? "", 
        );
    }
    @override 
    String toString() {
        // TODO: implement toString
        return super.toString();
    }
}
