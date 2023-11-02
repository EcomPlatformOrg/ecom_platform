// lib/data/repository/product_repository.dart

import '../../data/model/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
}

class FakeProductRepository implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    // Simulate a delay
    await Future.delayed(const Duration(seconds: 1));

    // Return some fake products
    return <Product>[
      Product(
        name: 'Pixel 6',
        description: 'Description 1',
        price: 29,
        imageUrl: 'assets/pixel6.png',
      ),
      Product(
        name: 'Pixel 7',
        description: 'Description 1',
        price: 39,
        imageUrl: 'assets/pixel7.png',
      ),
      Product(
        name: 'Pixel 8',
        description: 'Description 1',
        price: 49,
        imageUrl: 'assets/pixel8.png',
      ),
      Product(
        name: 'Google watch',
        description: 'Description 1',
        price: 19,
        imageUrl: 'assets/google_watch.png',
      ),
      Product(
        name: 'Google Buds Pro',
        description: 'Description 1',
        price: 39,
        imageUrl: 'assets/google_buds.png',
      ),
      Product(
        name: 'Google Nest Audio',
        description: 'Description 1',
        price: 29,
        imageUrl: 'assets/nest_audio.png',
      ),
    ];
  }
}
