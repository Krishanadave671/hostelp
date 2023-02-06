import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hostelp/features/home/widgets/Card.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What are you looking for?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter location',
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide(color: themePurple),
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
                    icon: const Icon(Icons.search_rounded),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomCard(
                      img: Image.asset(
                        "assets/images/buildings.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "Hostel",
                    ),
                    CustomCard(
                      img: Image.asset(
                        "assets/images/pg.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "PG",
                    ),
                    CustomCard(
                      img: Image.asset(
                        "assets/images/rent.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "Rent",
                    ),
                    CustomCard(
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
              CarouselSlider(
                items: [
                  Card(
                    child: Image.network(
                        "https://images.squarespace-cdn.com/content/v1/5ee642363713db37c1aa1c70/1601228943611-BHI8PAV7OM7FT5269O2M/image-asset.jpeg?format=1000w"),
                  ),
                  Card(
                    child: Image.network(
                        "https://cdn5.vectorstock.com/i/1000x1000/03/49/strawberry-ice-cream-advertisement-vector-21520349.jpg"),
                  ),
                  Card(
                    child: Image.network(
                        "https://static-cse.canva.com/blob/571368/advertisement161.jpg"),
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
              Text(
                "Stuff to explore nearby",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Hostels",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Rent apartments",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "PGs",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Tiffin services",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
