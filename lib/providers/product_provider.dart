import 'package:cupertino_style/model/product.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'product_provider.g.dart';

const List<Product> allProducts = [
  Product(
    id: '1',
    image: 'assets/products/backpack.png',
    price: 2000,
    title: 'Backpack',
  ),
  Product(
    id: '2',
    image: 'assets/products/drum.png',
    price: 3000,
    title: 'Drum',
  ),
  Product(
    id: '3',
    image: 'assets/products/guitar.png',
    price: 3000,
    title: 'Guitar',
  ),
  Product(
    id: '4',
    image: 'assets/products/jeans.png',
    price: 3000,
    title: 'Jeans',
  ),
];

final productsProvider = Provider((ref) {
  return allProducts;
});

final reduceProductProvider = Provider((ref) {
  return allProducts.where((p) => p.price < 2500);
});

@riverpod
List<Product> products(ref) {
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref) {
  return allProducts.where((p) => p.price < 2500).toList();
}
