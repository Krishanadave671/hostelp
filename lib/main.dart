import 'package:flutter/material.dart';
import 'package:hostelp/mytheme.dart';
import 'package:hostelp/router.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(useMaterial3: true , colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true , colorScheme: darkColorScheme),
      routerDelegate:
          RoutemasterDelegate(routesBuilder: (context) => loggedOutRoute),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
