// lib/app/widgets/tab_bar.dart

import '../../constants/styles.dart';
import 'package:flutter/material.dart';

class ProductTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ProductTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      padding: EdgeInsets.symmetric(horizontal: 160.0),
      indicatorSize: customTabIndicatorSize,
      labelPadding: customTabLabelPadding,
      labelStyle: customTabTextStyle,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      tabs: [
        Tab(text: '手機'),
        Tab(text: '無線耳機'),
        Tab(text: '手錶'),
        // ... Add more tabs here if needed
      ],
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // This is the height of the TabBar
}
