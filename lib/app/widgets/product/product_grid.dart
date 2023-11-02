// lib/app/widgets/product_grid.dart

import 'package:flutter/material.dart';
import '../../../data/model/product.dart';
import './product_item.dart';

class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid(this.products, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 300.0),
      child: SizedBox(
        height: 300, //
        child: ListView.builder(
          scrollDirection: Axis.horizontal, // 設置為水平滾動
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context, index) {
            return SizedBox(
              width: (MediaQuery.of(context).size.width - 500) / 6, // 設定每個產品的寬度
              child: ProductItem(products[index]),
            );
          },
          itemCount: products.length,
        ),
      ),
    );
  }
}
