// lib/app/widgets/app_bar.dart
import 'package:ecom_platform/app/widgets/search_box.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../widgets/login_register_button.dart';
import '../widgets/cart_button.dart';
import '../widgets/logo.dart';

// lib/app/widgets/app_bar.dart

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: appBarPaddingTop),
          child: AppBar(
            // backgroundColor: theme.appBarTheme.backgroundColor,
            backgroundColor: const Color(0xFFF0F9FF),
            elevation: theme.appBarTheme.elevation,
            title: const AppBarTitle(),
            actions: const <Widget>[
              // Use a list of widgets
              AppBarActions(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
          top: 10.0, right: 200.0), // Adjust these values as needed
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: SizedBox(
              // height: 400.0, // Adjust this value as needed
              child: Logo(),
            ),
          ), // Adjust this value as needed
          Expanded(
            child: SizedBox(
              height: 40.0, // Adjust this value as needed
              child: SearchBox(),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: buttonPaddingRight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Add this line
        children: [
          LoginRegisterButton(),
          SizedBox(width: buttonSpacing),
          CartButton(),
        ],
      ),
    );
  }
}
