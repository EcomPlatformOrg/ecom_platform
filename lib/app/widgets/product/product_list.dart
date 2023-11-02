// lib/app/widgets/product/product_list.dart

import 'package:ecom_platform/app/widgets/product/product_grid.dart';
import 'package:flutter/material.dart';
import '../../../data/model/product.dart';

class ProductList extends StatelessWidget {
  final List<Product> products;
  final String title;

  const ProductList({
    Key? key,
    required this.products,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.only(left: 320.0, top: 16.0, bottom: 16.0),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            ProductGrid(products),
          ],
        ),
      ),
    );
  }
}
