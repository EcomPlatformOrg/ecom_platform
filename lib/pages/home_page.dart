// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import '../components/carousel_slider.dart';
import '../components/custom_footer.dart';
import '../components/product_sliver_grid.dart';
import '../components/tab_bar.dart';
import '../views/app_bar.dart';
import '../models/product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        title: 'Pixel 6',
        description: 'Description 1',
        price: 29.99,
        imageUrl: 'assets/pixel6.png',
      ),
      Product(
        title: 'Pixel 7',
        description: 'Description 1',
        price: 39.99,
        imageUrl: 'assets/pixel7.png',
      ),
      Product(
        title: 'Pixel 8',
        description: 'Description 1',
        price: 49.99,
        imageUrl: 'assets/pixel8.png',
      ),
      Product(
        title: 'Google watch',
        description: 'Description 1',
        price: 19.99,
        imageUrl: 'assets/google_watch.png',
      ),
      Product(
        title: 'Google Buds Pro',
        description: 'Description 1',
        price: 39.99,
        imageUrl: 'assets/google_buds.png',
      ),
      Product(
        title: 'Google Nest Audio',
        description: 'Description 1',
        price: 29.99,
        imageUrl: 'assets/nest_audio.png',
      ),
    ];
    return DefaultTabController(
      length: 3, // The number of tabs
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const SizedBox(
                    height: 200,
                    width: 800,
                    child: Carousel(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ProductTabBar(),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 250.0, top: 16.0, bottom: 16.0),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      '熱門商品',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ProductSliverGrid(products), // Update to the new component
            SliverToBoxAdapter(
              child: Container(
                padding:
                    const EdgeInsets.only(left: 250.0, top: 16.0, bottom: 16.0),
                alignment: Alignment.centerLeft,
                child: const Text(
                  '最新商品',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            ProductSliverGrid(products), // Update to the new component
            const SliverToBoxAdapter(
              child: CustomFooter(),
            ),
          ],
        ),
        backgroundColor: const Color(0xFFF0F9FF),
      ),
    );
  }
}
