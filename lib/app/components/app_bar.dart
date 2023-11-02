// lib/app/widgets/app_bar.dart
import 'package:ecom_platform/app/widgets/search_box.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../widgets/login_register_button.dart';
import '../widgets/cart_button.dart';
import '../widgets/logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: appBarPaddingTop),
      child: AppBar(
        backgroundColor: theme.appBarTheme.backgroundColor,
        elevation: theme.appBarTheme.elevation,
        title: const AppBarTitle(),
        actions: const <Widget>[
          // Use a list of widgets
          AppBarActions(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(appBarHeight);
}

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Logo(),
        SearchBox(),
      ],
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LoginRegisterButton(),
          SizedBox(width: buttonSpacing),
          CartButton(),
        ],
      ),
    );
  }
}