import 'package:flutter/material.dart';
import 'package:hostelp/features/search/widgets/filter_checkbox_widget.dart';
import 'package:hostelp/features/search/widgets/search_filter_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<bool> selectedOptionList = [false, false, false]; // Hostel PG and Tiffin
  List<bool> selectedRoomList = [
    false,
    false,
    false,
    false
  ]; // Single, double, triple four room
  List<bool> selectedWorkPreferenceList = [false, false];
  int? selectedGender;
  int? mess;
  int currentSelectedPrice = 1000;

  void selectService(int index) {
    for (int i = 0; i < selectedOptionList.length; i++) {
      if (index == i) {
        selectedOptionList[i] = true;
      } else {
        selectedOptionList[i] = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'What are you looking for?',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SearchFilterButton(
                        title: 'Hostel',
                        leftCircularBorder: true,
                        onTap: () {
                          setState(() {
                            selectService(0);
                          });
                        },
                        isSelected: selectedOptionList[0],
                      ),
                      SearchFilterButton(
                        title: 'PG',
                        onTap: () {
                          setState(() {
                            selectService(1);
                          });
                        },
                        isSelected: selectedOptionList[1],
                      ),
                      SearchFilterButton(
                        title: 'Tiffin',
                        rightCircularBorder: true,
                        onTap: () {
                          setState(() {
                            selectService(2);
                          });
                        },
                        isSelected: selectedOptionList[2],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter location',
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide:
                              const BorderSide(color: Color(0xff645CBB)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: const BorderSide(
                            color: Color(0xff645CBB),
                            width: 2.5,
                          ),
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search_rounded))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'For',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color(0xff645CBB),
                          contentPadding: const EdgeInsets.all(0),
                          value: 1,
                          title: const Text('Male'),
                          groupValue: selectedGender,
                          onChanged: ((value) {
                            setState(() {
                              selectedGender = value;
                            });
                          }),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color(0xff645CBB),
                          contentPadding: const EdgeInsets.all(0),
                          value: 2,
                          title: const Text('Female'),
                          groupValue: selectedGender,
                          onChanged: ((value) {
                            setState(() {
                              selectedGender = value;
                            });
                          }),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color(0xff645CBB),
                          contentPadding: const EdgeInsets.all(0),
                          value: 3,
                          title: const Text('Others'),
                          groupValue: selectedGender,
                          onChanged: ((value) {
                            setState(() {
                              selectedGender = value;
                            });
                          }),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    'Room Type',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: FilterCheckBoxWidget(
                          title: 'Single room',
                          onChanged: (bool? value) {
                            setState(() {
                              selectedRoomList[0] = !selectedRoomList[0];
                            });
                          },
                          value: selectedRoomList[0],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: FilterCheckBoxWidget(
                          title: 'Double room',
                          onChanged: (bool? value) {
                            setState(() {
                              selectedRoomList[1] = !selectedRoomList[1];
                            });
                          },
                          value: selectedRoomList[1],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FilterCheckBoxWidget(
                          title: 'Triple room',
                          onChanged: (bool? value) {
                            setState(() {
                              selectedRoomList[2] = !selectedRoomList[2];
                            });
                          },
                          value: selectedRoomList[2],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: FilterCheckBoxWidget(
                          title: 'Four room',
                          onChanged: (bool? value) {
                            setState(() {
                              selectedRoomList[3] = !selectedRoomList[3];
                            });
                          },
                          value: selectedRoomList[3],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Price range: Rs. $currentSelectedPrice',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    activeColor: const Color(0xff645CBB),
                    label: 'Select price',
                    value: currentSelectedPrice.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        currentSelectedPrice = value.toInt();
                      });
                    },
                    min: 1000,
                    divisions: 10,
                    max: 20000,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Preferred for',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                          child: FilterCheckBoxWidget(
                        title: 'Student',
                        onChanged: (bool? value) {
                          setState(() {
                            selectedWorkPreferenceList[0] =
                                !selectedWorkPreferenceList[0];
                          });
                        },
                        value: selectedWorkPreferenceList[0],
                      )),
                      const SizedBox(width: 10),
                      Expanded(
                          child: FilterCheckBoxWidget(
                        title: 'Professional',
                        onChanged: (bool? value) {
                          setState(() {
                            selectedWorkPreferenceList[1] =
                                !selectedWorkPreferenceList[1];
                          });
                        },
                        value: selectedWorkPreferenceList[1],
                      )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Mess',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color(0xff645CBB),
                          contentPadding: const EdgeInsets.all(0),
                          value: 1,
                          title: const Text('Yes'),
                          groupValue: mess,
                          onChanged: ((value) {
                            setState(() {
                              mess = value;
                            });
                          }),
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          activeColor: const Color(0xff645CBB),
                          contentPadding: const EdgeInsets.all(0),
                          value: 2,
                          title: const Text('No'),
                          groupValue: mess,
                          onChanged: ((value) {
                            setState(() {
                              mess = value;
                            });
                          }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
