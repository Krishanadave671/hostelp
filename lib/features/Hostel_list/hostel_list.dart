import 'package:flutter/material.dart';
import 'package:hostelp/features/search/utils.dart';
import 'package:hostelp/features/search/widgets/filter_checkbox_widget.dart';

class HostelList extends StatelessWidget {
  const HostelList({Key? key}) : super(key: key);

  void roomFilterSelectionManager(int index) {
    for (int i = 0; i < Utils.selectedRoomList.length; i++) {
      if (i == index) {
        Utils.selectedRoomList[i]['isFilterSelected'] =
            !Utils.selectedRoomList[i]['isFilterSelected'];
      } else {
        Utils.selectedRoomList[i]['isFilterSelected'] = false;
      }
    }
  }

  void genderFilterSelectionManager(int index) {
    Utils.selectedGenderList[index]['isGenderSelected'] =
        !Utils.selectedGenderList[index]['isGenderSelected'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: const Icon(
            Icons.arrow_back_ios,
          ),
          elevation: 5,
          title: const Text(
            'Hostels in Location',
          ),
          floating: true,
          snap: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: IconButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(24))),
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height,
                          child: StatefulBuilder(builder:
                              (BuildContext context, StateSetter setState) {
                            return Scaffold(
                              body: SingleChildScrollView(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        'For',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      // Row(
                                      //   children: [
                                      //     Expanded(
                                      //       child: RadioListTile(
                                      //         activeColor:
                                      //             const Color(0xff645CBB),
                                      //         contentPadding:
                                      //             const EdgeInsets.all(0),
                                      //         value: 1,
                                      //         title: const Text('Male'),
                                      //         groupValue: Utils.selectedGender,
                                      //         onChanged: ((value) {
                                      //           setState(() {
                                      //             Utils.selectedGender = value;
                                      //           });
                                      //         }),
                                      //       ),
                                      //     ),
                                      //     Expanded(
                                      //       child: RadioListTile(
                                      //         activeColor:
                                      //             const Color(0xff645CBB),
                                      //         contentPadding:
                                      //             const EdgeInsets.all(0),
                                      //         value: 2,
                                      //         title: const Text('Female'),
                                      //         groupValue: Utils.selectedGender,
                                      //         onChanged: ((value) {
                                      //           setState(() {
                                      //             Utils.selectedGender = value;
                                      //           });
                                      //         }),
                                      //       ),
                                      //     ),
                                      //     Expanded(
                                      //       child: RadioListTile(
                                      //         activeColor:
                                      //             const Color(0xff645CBB),
                                      //         contentPadding:
                                      //             const EdgeInsets.all(0),
                                      //         value: 3,
                                      //         title: const Text('Others'),
                                      //         groupValue: Utils.selectedGender,
                                      //         onChanged: ((value) {
                                      //           setState(() {
                                      //             Utils.selectedGender = value;
                                      //           });
                                      //         }),
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      SizedBox(
                                        height: 40,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount:
                                              Utils.selectedGenderList.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Row(
                                              children: [
                                                InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  onTap: () {
                                                    setState(
                                                      () {
                                                        genderFilterSelectionManager(
                                                            index);
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                      color: Utils.selectedGenderList[
                                                                  index][
                                                              'isGenderSelected']
                                                          ? Theme.of(context)
                                                              .colorScheme
                                                              .inversePrimary
                                                          : const Color(
                                                              0xff232f21),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        Utils.selectedGenderList[
                                                                index]
                                                            ['genderType'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelMedium,
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
                                        'Room Type',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 40,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount:
                                              Utils.selectedRoomList.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Row(
                                              children: [
                                                InkWell(
                                                  borderRadius:
                                                      BorderRadius.circular(24),
                                                  onTap: () {
                                                    setState(
                                                      () {
                                                        roomFilterSelectionManager(
                                                            index);
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              24),
                                                      color: Utils.selectedRoomList[
                                                                  index][
                                                              'isFilterSelected']
                                                          ? Theme.of(context)
                                                              .colorScheme
                                                              .inversePrimary
                                                          : const Color(
                                                              0xff232f21),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        Utils.selectedRoomList[
                                                            index]['roomType'],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelMedium,
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
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      Slider(
                                        activeColor: Theme.of(context)
                                            .colorScheme
                                            .onPrimaryContainer,
                                        label: 'Select price',
                                        value: Utils.currentSelectedPrice
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
                                      Text(
                                        'Preferred for',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Expanded(
                                                child: FilterCheckBoxWidget(
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
                                                child: FilterCheckBoxWidget(
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
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        'Mess',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall
                                            ?.copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: RadioListTile(
                                              activeColor:
                                                  const Color(0xff645CBB),
                                              contentPadding:
                                                  const EdgeInsets.all(0),
                                              value: 1,
                                              title: Text(
                                                'Yes',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
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
                                                  const Color(0xff645CBB),
                                              contentPadding:
                                                  const EdgeInsets.all(0),
                                              value: 2,
                                              title: Text(
                                                'No',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium,
                                              ),
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
                icon: const Icon(Icons.edit),
              ),
            ),
          ],
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
          const ElevatedCardExample(),
        ]))
      ],
    ));
  }
}

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.16;
    final width = MediaQuery.of(context).size.width;
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {},
        child: Card(
            elevation: 5,
            child: SizedBox(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 10,
                        child: Container(
                          height: height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1555854877-bab0e564b8d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aG9zdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("A.G Hostel",
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Ratings : 4.1",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  const Icon(
                                    Icons.star_rate,
                                    color: Colors.orangeAccent,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.currency_rupee,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Text("30000",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary)),
                              const Text("  per month"),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
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
                                ],
                              ),
                              const Text(
                                "Available",
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    ));
  }
}
