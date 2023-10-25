import 'styles/theme.dart';
import 'package:flutter/material.dart';
import 'views/app_bar.dart';  // Import the CustomAppBar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: customThemeData,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),  // Use the CustomAppBar
      body: Center(
        child: Text('Your content here'),
      ),
    );
  }
}
