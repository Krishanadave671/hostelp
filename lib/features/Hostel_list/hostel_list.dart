import 'package:flutter/material.dart';
import 'package:hostelp/features/search/utils.dart';
import 'package:hostelp/features/search/widgets/filter_checkbox_widget.dart';

class HostelList extends StatelessWidget {
  const HostelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Spacer(),
          ElevatedCardExample(),
          FilledCardExample(),
          OutlinedCardExample(),
          Spacer(),
        ],
      ),
    );
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});
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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.16;
    final width = MediaQuery.of(context).size.width;
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
              context: context,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(24))),
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                    return Scaffold(
                      body: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text(
                                'Gender',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: RadioListTile(
                                      activeColor: const Color(0xff645CBB),
                                      contentPadding: const EdgeInsets.all(0),
                                      value: 1,
                                      title: const Text('Male'),
                                      groupValue: Utils.selectedGender,
                                      onChanged: ((value) {
                                        setState(() {
                                          Utils.selectedGender = value;
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
                                      groupValue: Utils.selectedGender,
                                      onChanged: ((value) {
                                        setState(() {
                                          Utils.selectedGender = value;
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
                                      groupValue: Utils.selectedGender,
                                      onChanged: ((value) {
                                        setState(() {
                                          Utils.selectedGender = value;
                                        });
                                      }),
                                    ),
                                  ),
                                ],
                              ),
                              const Text(
                                'Room Type',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 40,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: Utils.selectedRoomList.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Row(
                                      children: [
                                        InkWell(
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          onTap: () {
                                            setState(
                                              () {
                                                filterSelectionManager(index);
                                              },
                                            );
                                          },
                                          child: Container(
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(24),
                                              color:
                                                  Utils.selectedRoomList[index]
                                                          ['isFilterSelected']
                                                      ? Theme.of(context)
                                                          .colorScheme
                                                          .onSecondary
                                                      : const Color(0xff232f21),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Text(
                                                Utils.selectedRoomList[index]
                                                    ['roomType'],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
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
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Slider(
                                activeColor: const Color(0xff645CBB),
                                label: 'Select price',
                                value: Utils.currentSelectedPrice.toDouble(),
                                onChanged: (value) {
                                  setState(() {
                                    Utils.currentSelectedPrice = value.toInt();
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
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Expanded(
                                      child: FilterCheckBoxWidget(
                                    title: 'Student',
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Utils.selectedWorkPreferenceList[0] =
                                            !Utils
                                                .selectedWorkPreferenceList[0];
                                      });
                                    },
                                    value: Utils.selectedWorkPreferenceList[0],
                                  )),
                                  const SizedBox(width: 10),
                                  Expanded(
                                      child: FilterCheckBoxWidget(
                                    title: 'Professional',
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Utils.selectedWorkPreferenceList[1] =
                                            !Utils
                                                .selectedWorkPreferenceList[1];
                                      });
                                    },
                                    value: Utils.selectedWorkPreferenceList[1],
                                  )),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Mess',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
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
                                      activeColor: const Color(0xff645CBB),
                                      contentPadding: const EdgeInsets.all(0),
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
        },
        child: Card(
            margin: const EdgeInsets.all(4.0),
            elevation: 0,
            child: Container(
              height: height,
              width: width,
              child: Row(
                children: [
                  Container(
                    width: width * 0.3,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "A.G Hostel",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Ratings : 4.1",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.star_rate,
                            color: Colors.orangeAccent,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            color: Colors.red,
                          ),
                          Text(
                            "30000",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("  per month"),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                          ),
                          Text(
                            "2 km from location",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "|",
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Available",
                            style: TextStyle(
                              color: Colors.green,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: Text('Outlined Card'),
          ),
        ),
      ),
    );
  }
}
