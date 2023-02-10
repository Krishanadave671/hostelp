class Utils {
  static List<bool> selectedOptionList = [
    false,
    false,
    false
  ]; // Hostel PG and Tiffin
  static List<Map<String, dynamic>> selectedRoomList = [
    {
      'roomType': 'Single room',
      'isFilterSelected': false,
    },
    {
      'roomType': 'Double room',
      'isFilterSelected': false,
    },
    {
      'roomType': 'Triple room',
      'isFilterSelected': false,
    },
    {
      'roomType': 'Four room',
      'isFilterSelected': false,
    },
  ]; // Single, double, triple four room

  static List<Map<String, dynamic>> selectedGenderList = [
    {
      'genderType': 'Male',
      'isGenderSelected': false,
    },
    {
      'genderType': 'Female',
      'isGenderSelected': false,
    },
    {
      'genderType': 'Others',
      'isGenderSelected': false,
    },
  ];
  static List<bool> selectedWorkPreferenceList = [false, false];
  static int? selectedGender;
  static int? mess;
  static int currentSelectedPrice = 1000;
  static bool buttonAnimationBoolean = false;
}
