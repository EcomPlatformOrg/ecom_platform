// lib/bloc/product/product_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:ecom_platform/bloc/product/product_event.dart';
import 'package:ecom_platform/bloc/product/product_state.dart';
import 'package:ecom_platform/data/repository/product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository productRepository;

  ProductBloc({required this.productRepository}) : super(ProductInitial()) {
    on<LoadProducts>(_onLoadProducts);
  }

  void _onLoadProducts(LoadProducts event, Emitter<ProductState> emit) async {
    try {
      emit(ProductLoading());
      final products = await productRepository.getProducts();
      emit(ProductLoaded(products));
    } catch (error) {
      emit(ProductError(error.toString()));
    }
  }
}
