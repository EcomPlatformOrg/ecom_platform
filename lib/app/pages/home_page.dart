// lib/app/pages/home_page.dart

import 'package:flutter/material.dart';
import '../widgets/carousel_slider.dart';
import '../components/custom_footer.dart';
import '../widgets/product/product_list.dart'; // Updated import
import '../components/tab_bar.dart';
import '../components/app_bar.dart';
import '../../data/model/product.dart';
import '../../data/repository/product_repository.dart'; // Import the product repository

// 定義 HomePage 類別,繼承 StatelessWidget 表示它是一個不可變的組件
class HomePage extends StatelessWidget {
  // 定義一個 ProductRepository 用於獲取產品資訊
  final ProductRepository productRepository; // Dependency Injection

  const HomePage({
    Key? key,
    required this.productRepository, // 通過構造函數接收 ProductRepository 對象
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      // 使用 FutureBuilder 處理異步操作 異步獲取產品列表
      future: productRepository
          .getProducts(), // 調用 ProductRepository 的 getProducts 方法獲取產品列表
      builder: (context, snapshot) {
        // builder 函數構建 UI
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator(); // 如果在等待狀態，顯示加載指示器
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}'); // 如果有錯誤，顯示錯誤資訊
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Text('No products available'); // 如果沒有資料或資料為空，顯示無產品可用的資訊
        } else {
          final products = snapshot.data!; // 獲取產品列表
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: const CustomAppBar(), // 設置應用欄
              body: CustomScrollView(
                // 使用 CustomScrollView 組織頁面內容
                slivers: [
                  const SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200,
                          width: 800,
                          child: Carousel(), // 顯示輪播圖
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: ProductTabBar(), // 顯示產品標籤欄
                        ),
                      ],
                    ),
                  ),
                  ProductList(
                    products: products,
                    title: '熱門商品',
                  ), // Updated to use ProductList
                  ProductList(
                    products: products,
                    title: '最新商品',
                  ), // Updated to use ProductList
                  const SliverToBoxAdapter(
                    child: CustomFooter(), // 顯示自定義底部
                  ),
                ],
              ),
              backgroundColor: const Color(0xFFF0F9FF), // 設置背景顏色
            ),
          );
        }
      },
    );
  }
}
