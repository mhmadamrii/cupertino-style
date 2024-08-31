import 'package:cupertino_style/model/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends Notifier<Set<Product>> {
  // initial value
  @override
  Set<Product> build() {
    return const {
      Product(
        id: '9',
        image: 'assets/products/jeans.png',
        price: 900,
        title: 'New Product',
      )
    };
  }
  // method to update state
}

final cartNotifierProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
