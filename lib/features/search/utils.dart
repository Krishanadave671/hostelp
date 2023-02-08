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
      'icon': 'one_person.svg',
    },
    {
      'roomType': 'Double room',
      'isFilterSelected': false,
      'icon': 'two_person.svg',
    },
    {
      'roomType': 'Triple room',
      'isFilterSelected': false,
      'icon': 'three_person.svg',
    },
    {
      'roomType': 'Four room',
      'isFilterSelected': false,
      'icon': 'four_person.svg',
    },
  ]; // Single, double, triple four room
  static List<bool> selectedWorkPreferenceList = [false, false];
  static int? selectedGender;
  static int? mess;
  static int currentSelectedPrice = 1000;
  static bool buttonAnimationBoolean = false;
}
