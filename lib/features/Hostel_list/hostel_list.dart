import 'package:flutter/material.dart';

class HostelList extends StatelessWidget {
  const HostelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: Icon(
            Icons.arrow_back_ios,
          ),
          elevation: 5,
          title: Text(
            'Hostels in Location',
          ),
          floating: true,
          snap: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.edit,
              ),
            ),
          ],
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
          ElevatedCardExample(),
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
                            image: DecorationImage(
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
                                width:
                                    MediaQuery.of(context).size.height * 0.02,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Ratings : 4.1",
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.orangeAccent,
                                    size: 16,
                                  ),
                                ],
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
                              Text("  per month"),
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
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
                                ],
                              ),
                              Text(
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
