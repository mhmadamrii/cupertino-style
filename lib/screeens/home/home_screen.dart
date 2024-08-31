import 'package:cupertino_style/providers/cart_provider.dart';
import 'package:cupertino_style/providers/product_provider.dart';
import 'package:cupertino_style/shared/cart_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final allProducts = ref.watch(productsProvider);
    final cartProducts = ref.watch(cartNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Garage Sale Products",
        ),
        actions: const [CartIcon()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: allProducts.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.blueGrey.withOpacity(0.05),
              child: Column(
                children: [
                  Image.asset(
                    allProducts[index].image,
                    width: 60,
                    height: 60,
                  ),
                  Text(
                    allProducts[index].title,
                  ),
                  Text('${allProducts[index].price}'),
                  if (cartProducts.contains(allProducts[index]))
                    TextButton(
                      onPressed: () {},
                      child: const Text("Remove"),
                    ),
                  if (!cartProducts.contains(allProducts[index]))
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Add To Cart",
                      ),
                    )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}