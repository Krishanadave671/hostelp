import 'package:flutter/material.dart';
import 'package:hostelp/features/Hostel_list/hostel_list.dart';
import 'package:hostelp/features/auth/screens/login_screen.dart';
import 'package:hostelp/features/home/screens/home_screen.dart';
import 'package:hostelp/features/profilepage/screens/profile_page.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HostelList()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});

final hostellistRoute = RouteMap(routes: {
  '/hostellist': (_) => const MaterialPage(child: HostelList()),
});
