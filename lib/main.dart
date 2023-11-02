// lib/main.dart
import 'package:ecom_platform/app/pages/home_page.dart';
import 'package:ecom_platform/data/repository/product_repository.dart';
import 'package:ecom_platform/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<ProductRepository>(
      create: (context) => FakeProductRepository(),
      child: MaterialApp(
        home: Builder(
          builder: (context) {
            final productRepository =
                Provider.of<ProductRepository>(context, listen: false);
            return HomePage(productRepository: productRepository);
          },
        ),
        debugShowCheckedModeBanner: false,
        theme: customThemeData,
      ),
    );
  }
}
