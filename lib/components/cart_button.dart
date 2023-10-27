import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      icon: Icon(Icons.shopping_cart, color: theme.iconTheme.color),
      onPressed: () {
        // Navigate to cart page
      },
    );
  }
}
