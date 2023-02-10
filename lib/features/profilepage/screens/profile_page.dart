// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// import 'package:hostelp/mytheme.dart';

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({Key? key}) : super(key: key);

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen>
//     with SingleTickerProviderStateMixin {
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final mobileController = TextEditingController();
//   late AnimationController _animationController;
//   late Animation<Offset> _animationImage, _animationCamera;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 300));
//     _animationImage =
//         Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -0.4))
//             .animate(_animationController);
//     _animationCamera =
//         Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, -1.1))
//             .animate(_animationController);
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//         const SystemUiOverlayStyle(statusBarColor: MyTheme.appBarColor));
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Profile"),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Container(
//         height: double.maxFinite,
//         width: double.maxFinite,
//         child: Stack(
//           children: [
//             NotificationListener<ScrollNotification>(
//               onNotification: (notification) {
//                 if (notification.metrics.pixels ==
//                     notification.metrics.maxScrollExtent) {
//                   _animationController.forward();
//                 } else if (notification.metrics.pixels ==
//                     notification.metrics.minScrollExtent * 0.5) {
//                   _animationController.reverse();
//                 }
//                 print(notification.metrics.pixels);
//                 return true;
//               },
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 150,
//                       width: double.maxFinite,
//                       decoration: const BoxDecoration(
//                         color: MyTheme.appBarColor,
//                         borderRadius: BorderRadius.only(
//                           bottomRight: Radius.circular(30),
//                           bottomLeft: Radius.circular(30),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 60,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 70.0),
//                       child: Text("Name"),
//                     ),

//                       Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                           child: TextFormField(

//                             initialValue: "",
//                             style: const TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                               border: const OutlineInputBorder(
//                                   borderSide: BorderSide.none),
//                               prefixIcon: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Container(
//                                   height: 25,
//                                   width: 25,
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: const Color(0xFFE4EDFF),
//                                   ),
//                                   child: const Icon(
//                                     Icons.person_outline,
//                                     color: Color(0xFF4C7EFF),
//                                   ),
//                                 ),
//                               ),
//                               suffixIcon: GestureDetector(
//                                 onTap: () {
//                                   // ProfileController.instance.toggleEdit();
//                                 },
//                                 child: const Padding(
//                                   padding: EdgeInsets.all(4.0),
//                                   child: Icon(
//                                     Icons.edit_outlined,
//                                     color: Color(0xFF4C7EFF),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                       ),

//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 70.0),
//                       child: Text("Email"),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: TextFormField(
//                         initialValue: "krishnadave671@gmail.com",
//                         readOnly: true,
//                         style: TextStyle(color: Colors.black),
//                         decoration: InputDecoration(
//                           border: const OutlineInputBorder(
//                               borderSide: BorderSide.none),
//                           prefixIcon: Padding(
//                             padding: const EdgeInsets.all(4.0),
//                             child: Container(
//                               height: 25,
//                               width: 25,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: const Color(0xFFE8DBFF),
//                               ),
//                               child: const Icon(
//                                 Icons.email_outlined,
//                                 color: Color(0xFFCC80EA),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 70.0),
//                       child: Text("Mobile"),
//                     ),

//                     const Padding(
//                       padding: EdgeInsets.only(left: 30),
//                       child: Text('DOCUMENTATION'),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: ListTile(
//                         leading: const Icon(
//                           Icons.privacy_tip_outlined,
//                           size: 20,
//                         ),
//                         title: const Text(
//                           'Privacy Policy',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         onTap: () {},
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: ListTile(
//                         leading: const Icon(
//                           Icons.share,
//                           size: 20,
//                         ),
//                         title: const Text(
//                           'Share',
//                           style: TextStyle(color: Colors.black),
//                         ),
//                         onTap: () {},
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20),
//                       child: ListTile(
//                         leading: const Icon(
//                           Icons.logout_outlined,
//                           size: 20,
//                           color: Colors.red,
//                         ),
//                         title: const Text(
//                           'Logout',
//                           style: TextStyle(color: Colors.red),
//                         ),
//                         onTap: () {
//                           // AuthController.instance.signOut();
//                         },
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 90,
//               left: MediaQuery.of(context).size.width * 0.5 - 60,
//               child: SlideTransition(
//                 position: _animationImage,
//                 child: Center(
//                   child: Container(
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.white, width: 3),
//                       borderRadius: BorderRadius.circular(60),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(60),
//                       child: CachedNetworkImage(
//                         fit: BoxFit.cover,
//                         imageUrl: "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
//                         height: 120,
//                         width: 120,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 170,
//               left: MediaQuery.of(context).size.width * 0.5 + 20,
//               child: SlideTransition(
//                 position: _animationCamera,
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: MyTheme.appBarColor,
//                   ),
//                   child: const Icon(
//                     Icons.camera_alt,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
