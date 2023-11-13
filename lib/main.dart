import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecom_platform/app/pages/home_page.dart';
import 'package:ecom_platform/data/repository/product_repository.dart';
import 'package:ecom_platform/bloc/product/product_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key); // Removed the const keyword

  @override
  Widget build(BuildContext context) {
    // Provide a ProductRepository to HomePage through MaterialApp
    return BlocProvider(
      create: (context) =>
          ProductBloc(productRepository: FakeProductRepository()),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(
            productRepository:
                FakeProductRepository()), // Added productRepository argument
      ),
    );
  }
}
