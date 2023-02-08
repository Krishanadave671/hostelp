import 'package:flutter/material.dart';
import 'package:hostelp/features/auth/screens/login_screen.dart';
import 'package:hostelp/features/home/screens/home_screen.dart';
import 'package:hostelp/features/search/screens/search_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
  // '/': (_) => const MaterialPage(child: SearchScreen()),
});
