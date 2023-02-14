import 'package:flutter/material.dart';
import 'package:hostelp/details_screen.dart';
import 'package:hostelp/features/Hostel_list/hostel_list.dart';
import 'package:hostelp/features/auth/screens/login_screen.dart';
import 'package:hostelp/features/search/screens/search_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: SearchScreen()),
  '/search': (_) => const MaterialPage(child: SearchScreen()),
  '/detail': (_) => const MaterialPage(child: DetailScreen()), 
  '/hostellist' :(_) => const MaterialPage(child: HostelList())
});
