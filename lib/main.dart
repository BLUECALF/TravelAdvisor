import 'package:flutter/material.dart';

import 'Home/presentation/HomePageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.orange), // Adjust the color scheme
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
