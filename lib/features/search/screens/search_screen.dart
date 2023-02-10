import 'package:flutter/material.dart';
import 'package:hostelp/features/search/utils.dart';
import 'package:hostelp/features/search/widgets/button.dart';
import 'package:hostelp/features/search/widgets/filter_checkbox_widget.dart';
import 'package:hostelp/features/search/widgets/search_filter_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  void selectService(int index) {
    for (int i = 0; i < Utils.selectedOptionList.length; i++) {
      if (index == i) {
        Utils.selectedOptionList[i] = true;
      } else {
        Utils.selectedOptionList[i] = false;
      }
    }
  }

  void selectGenderMethod(int? value) {
    setState(() {
      Utils.selectedGender = value;
    });
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
                        isSelected: Utils.selectedOptionList[0],
                      ),
                      SearchFilterButton(
                        title: 'PG',
                        onTap: () {
                          setState(() {
                            selectService(1);
                          });
                        },
                        isSelected: Utils.selectedOptionList[1],
                      ),
                      SearchFilterButton(
                        title: 'Tiffin',
                        rightCircularBorder: true,
                        onTap: () {
                          setState(() {
                            selectService(2);
                          });
                        },
                        isSelected: Utils.selectedOptionList[2],
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
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Button(
                          title: 'Filter',
                          onTap: () {
                            Utils.buttonAnimationBoolean = true;
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24))),
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: MediaQuery.of(context).size.height,
                                    child: StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Scaffold(
                                        body: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                const Text(
                                                  'For',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: RadioListTile(
                                                        activeColor:
                                                            const Color(
                                                                0xff645CBB),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        value: 1,
                                                        title:
                                                            const Text('Male'),
                                                        groupValue: Utils
                                                            .selectedGender,
                                                        onChanged: ((value) {
                                                          setState(() {
                                                            Utils.selectedGender =
                                                                value;
                                                          });
                                                        }),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: RadioListTile(
                                                        activeColor:
                                                            const Color(
                                                                0xff645CBB),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        value: 2,
                                                        title: const Text(
                                                            'Female'),
                                                        groupValue: Utils
                                                            .selectedGender,
                                                        onChanged: ((value) {
                                                          setState(() {
                                                            Utils.selectedGender =
                                                                value;
                                                          });
                                                        }),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: RadioListTile(
                                                        activeColor:
                                                            const Color(
                                                                0xff645CBB),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        value: 3,
                                                        title: const Text(
                                                            'Others'),
                                                        groupValue: Utils
                                                            .selectedGender,
                                                        onChanged: ((value) {
                                                          setState(() {
                                                            Utils.selectedGender =
                                                                value;
                                                          });
                                                        }),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const Text(
                                                  'Room Type',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                SizedBox(
                                                  height: 40,
                                                  child: ListView.builder(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    itemCount: Utils
                                                        .selectedRoomList
                                                        .length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                            int index) {
                                                      return Row(
                                                        children: [
                                                          InkWell(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        24),
                                                            onTap: () {
                                                              setState(
                                                                () {
                                                                  filterSelectionManager(
                                                                      index);
                                                                },
                                                              );
                                                            },
                                                            child: Container(
                                                              height: 40,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24),
                                                                color: Utils.selectedRoomList[
                                                                            index]
                                                                        [
                                                                        'isFilterSelected']
                                                                    ? Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .inversePrimary
                                                                    : const Color(
                                                                        0xff232f21),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Text(
                                                                  Utils.selectedRoomList[
                                                                          index]
                                                                      [
                                                                      'roomType'],
                                                                  style: TextStyle(
                                                                      color: Utils.selectedRoomList[index]
                                                                              [
                                                                              'isFilterSelected']
                                                                          ? Colors
                                                                              .black
                                                                          : Colors
                                                                              .white),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  'Price range: Rs. ${Utils.currentSelectedPrice}',
                                                  style: const TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Slider(
                                                  activeColor:
                                                      const Color(0xff645CBB),
                                                  label: 'Select price',
                                                  value: Utils
                                                      .currentSelectedPrice
                                                      .toDouble(),
                                                  onChanged: (value) {
                                                    setState(() {
                                                      Utils.currentSelectedPrice =
                                                          value.toInt();
                                                    });
                                                  },
                                                  min: 1000,
                                                  divisions: 10,
                                                  max: 20000,
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Preferred for',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child:
                                                            FilterCheckBoxWidget(
                                                      title: 'Student',
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Utils.selectedWorkPreferenceList[
                                                              0] = !Utils
                                                                  .selectedWorkPreferenceList[
                                                              0];
                                                        });
                                                      },
                                                      value: Utils
                                                          .selectedWorkPreferenceList[0],
                                                    )),
                                                    const SizedBox(width: 10),
                                                    Expanded(
                                                        child:
                                                            FilterCheckBoxWidget(
                                                      title: 'Professional',
                                                      onChanged: (bool? value) {
                                                        setState(() {
                                                          Utils.selectedWorkPreferenceList[
                                                              1] = !Utils
                                                                  .selectedWorkPreferenceList[
                                                              1];
                                                        });
                                                      },
                                                      value: Utils
                                                          .selectedWorkPreferenceList[1],
                                                    )),
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
                                                const Text(
                                                  'Mess',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: RadioListTile(
                                                        activeColor:
                                                            const Color(
                                                                0xff645CBB),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        value: 1,
                                                        title:
                                                            const Text('Yes'),
                                                        groupValue: Utils.mess,
                                                        onChanged: ((value) {
                                                          setState(() {
                                                            Utils.mess = value;
                                                          });
                                                        }),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: RadioListTile(
                                                        activeColor:
                                                            const Color(
                                                                0xff645CBB),
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(0),
                                                        value: 2,
                                                        title: const Text('No'),
                                                        groupValue: Utils.mess,
                                                        onChanged: ((value) {
                                                          setState(() {
                                                            Utils.mess = value;
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
                                      );
                                    }),
                                  );
                                });
                            Utils.buttonAnimationBoolean = false;
                          }))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void filterSelectionManager(int index) {
    for (int i = 0; i < Utils.selectedRoomList.length; i++) {
      if (i == index) {
        Utils.selectedRoomList[i]['isFilterSelected'] =
            !Utils.selectedRoomList[i]['isFilterSelected'];
      } else {
        Utils.selectedRoomList[i]['isFilterSelected'] = false;
      }
    }
  }
}
