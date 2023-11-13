// lib/app/pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/product/product_bloc.dart';
import '../../bloc/product/product_event.dart';
import '../../bloc/product/product_state.dart';
import '../../data/repository/product_repository.dart';
import '../widgets/carousel_slider.dart';
import '../components/custom_footer.dart';
import '../components/app_bar.dart';
import '../widgets/product/product_list.dart';

class HomePage extends StatelessWidget {
  final ProductRepository productRepository;

  const HomePage({
    Key? key,
    required this.productRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(productRepository: productRepository)
        ..add(LoadProducts()),
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const CircularProgressIndicator();
          } else if (state is ProductError) {
            return Text('Error: ${state.message}');
          } else if (state is ProductLoaded) {
            final products = state.products;
            return DefaultTabController(
              length: 3,
              child: Scaffold(
                appBar: const CustomAppBar(),
                body: CustomScrollView(
                  slivers: [
                    const SliverToBoxAdapter(
                      child: SizedBox(
                        height: 200, // 輪播圖的高度
                        width: double.infinity, // 輪播圖的寬度
                        child: Carousel(), // 輪播組件
                      ),
                    ),
                    ProductList(
                      products: products,
                      title: '熱門商品',
                    ),
                    ProductList(
                      products: products,
                      title: '最新商品',
                    ),
                    const SliverToBoxAdapter(
                      child: CustomFooter(),
                    ),
                  ],
                ),
                backgroundColor: const Color(0xFFF0F9FF),
              ),
            );
          } else {
            return const Text('No products available');
          }
        },
      ),
    );
  }
}
