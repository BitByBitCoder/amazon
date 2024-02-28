import 'package:ama/constants/GlobalVariable.dart';
import 'package:ama/features/auth/screens/auth_screen.dart';
import 'package:ama/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(elevation: 0),
          iconTheme: const IconThemeData(color: Colors.black),
          colorScheme:
              const ColorScheme.light(primary: GlobalVariables.secondaryColor),
          scaffoldBackgroundColor: GlobalVariables.backgroundColor),
      // onGenerateRoute: ((settings) => generateRoute(settings)),
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: const Text('Home Page'),
          ),
          body: const AtuhScreen()),
    );
  }
}
