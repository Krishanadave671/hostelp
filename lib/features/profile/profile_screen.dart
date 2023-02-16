import 'package:flutter/material.dart';
import 'package:hostelp/features/profile/widgets/custom_card.dart';
import 'package:hostelp/features/profile/widgets/custom_gender.dart';
import 'package:hostelp/features/profile/widgets/custom_textfield.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MyProfileState();
}

class _MyProfileState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Back"),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromRGBO(173, 0, 255, 1),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.notifications_none_outlined,
                color: Color.fromRGBO(173, 0, 255, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.settings,
                color: Color.fromRGBO(173, 0, 255, 1),
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  backgroundImage: AssetImage("assets/images/profile_icon.png"),
                  radius: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyCard(
                      img: Image.asset(
                        "assets/images/booking_icon.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "Booking",
                      onTap: () {
                        // Routemaster.of(context).push('/hostel');
                      },
                    ),
                    MyCard(
                      img: Image.asset(
                        "assets/images/wishlist_icon.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "Wishlist",
                      onTap: () {
                        // Routemaster.of(context).push('/hostel');
                      },
                    ),
                    MyCard(
                      img: Image.asset(
                        "assets/images/reward_icon.png",
                        height: 55,
                        width: 50,
                      ),
                      name: "Rewards",
                      onTap: () {
                        // Routemaster.of(context).push('/hostel');
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  hintText: 'Name',
                  icon: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(173, 0, 255, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(240, 240, 240, 1),
                            borderRadius: BorderRadius.circular(12),

                            // image: const DecorationImage(
                            //   image:
                            //       AssetImage('assets/images/gender_icon.png'),
                            // ),
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/gender_icon.png'),
                            height: 10,
                            width: 10,
                          ),
                        ),
                      ),
                      const GenderSelection(),
                    ],
                  ),
                ),
                const CustomTextField(
                  hintText: 'Mobile No',
                  icon: Icon(
                    Icons.phone,
                    color: Color.fromRGBO(173, 0, 255, 1),
                  ),
                ),
                const CustomTextField(
                  hintText: 'Email',
                  icon: Icon(
                    Icons.email,
                    color: Color.fromRGBO(173, 0, 255, 1),
                  ),
                ),
                const CustomTextField(
                  hintText: 'Address Line 1',
                  icon: Icon(
                    Icons.home,
                    color: Color.fromRGBO(173, 0, 255, 1),
                  ),
                ),
                const CustomTextField(
                  hintText: 'Address Line 2',
                  icon: Icon(
                    Icons.home,
                    color: Color.fromRGBO(173, 0, 255, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Color.fromRGBO(173, 0, 255, 1)),
                  ),
                  child: const Text(
                    'update',
                    style: TextStyle(color: Colors.white70),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
