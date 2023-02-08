import 'dart:math';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hostelp/features/home/widgets/AdCard.dart';
import 'package:hostelp/features/home/widgets/BigCard.dart';
import 'package:hostelp/features/home/widgets/BigGap.dart';
import 'package:hostelp/features/home/widgets/MiniCard.dart';
import 'package:hostelp/features/home/widgets/SmallGap.dart';
import 'package:hostelp/features/home/widgets/CurvedShape.dart';
import 'package:hostelp/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: themePurple,
        elevation: 0,
        primary: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          CircleAvatar(
            backgroundImage: null,
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              CurvedShape(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Text(
                  //   "What are you looking for?",
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 22,
                  //     fontFamily: 'EuclidCircular',
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // TextField(
                  //   style: TextStyle(
                  //     color: Colors.black,
                  //     fontSize: 20,
                  //     fontFamily: 'EuclidCircular',
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  //   decoration: InputDecoration(
                  //     hintText: 'Enter location',
                  //     filled: true,
                  //     enabledBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(24),
                  //       borderSide: BorderSide(color: themePurple),
                  //     ),
                  //     focusedBorder: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(24),
                  //       borderSide: const BorderSide(
                  //         color: Color(0xff645CBB),
                  //         width: 2.5,
                  //       ),
                  //     ),
                  //     suffixIcon: IconButton(
                  //       onPressed: () {},
                  //       icon: const Icon(Icons.search_rounded),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MiniCard(
                            img: Image.asset(
                              "assets/images/buildings.png",
                              height: 55,
                              width: 50,
                            ),
                            name: "Hostel",
                          ),
                          MiniCard(
                            img: Image.asset(
                              "assets/images/pg.png",
                              height: 55,
                              width: 50,
                            ),
                            name: "PG",
                          ),
                          MiniCard(
                            img: Image.asset(
                              "assets/images/rent.png",
                              height: 55,
                              width: 50,
                            ),
                            name: "Rent",
                          ),
                          MiniCard(
                            img: Image.asset(
                              "assets/images/tiffin.png",
                              height: 55,
                              width: 50,
                            ),
                            name: "Tiffin",
                          ),
                        ],
                      ),
                    ),
                  ),
                  BigGap(),
                  CarouselSlider(
                    items: [
                      AdCard(
                        link:
                            "https://images.squarespace-cdn.com/content/v1/5ee642363713db37c1aa1c70/1601228943611-BHI8PAV7OM7FT5269O2M/image-asset.jpeg?format=1000w",
                      ),
                      AdCard(
                        link:
                            "https://cdn5.vectorstock.com/i/1000x1000/03/49/strawberry-ice-cream-advertisement-vector-21520349.jpg",
                      ),
                      AdCard(
                        link:
                            "https://static-cse.canva.com/blob/571368/advertisement161.jpg",
                      ),
                    ],
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.7,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    ),
                  ),
                  BigGap(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stuff to explore nearby",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'EuclidCircular',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SmallGap(),
                        Text(
                          "Hostels",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'EuclidCircular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                name: "Wayne Mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Stark Tower",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Bojack's mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SmallGap(),
                        Text(
                          "Rent apartments",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'EuclidCircular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                name: "Wayne Mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Stark Tower",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Bojack's mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SmallGap(),
                        Text(
                          "PGs",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'EuclidCircular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                name: "Wayne Mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Stark Tower",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Bojack's mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SmallGap(),
                        Text(
                          "Tiffin services",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'EuclidCircular',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BigCard(
                                name: "Wayne Mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Stark Tower",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              BigCard(
                                name: "Bojack's mansion",
                                img: Image.network(
                                  fit: BoxFit.contain,
                                  "https://media.istockphoto.com/id/506903162/photo/luxurious-villa-with-pool.jpg?s=612x612&w=0&k=20&c=Ek2P0DQ9nHQero4m9mdDyCVMVq3TLnXigxNPcZbgX2E=",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SmallGap(),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
