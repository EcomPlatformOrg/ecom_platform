// lib/styles/styles.dart

import 'package:flutter/material.dart';

const TextStyle kTextStyle12 = TextStyle(fontSize: 12);
const TextStyle kHintTextStyle = TextStyle(color: Colors.grey);
const customTabLabelPadding = EdgeInsets.symmetric(
    horizontal: 12.0); // Adjust horizontal padding to your preference
const customTabTextStyle = TextStyle(
  fontSize: 12.0, // Adjust font size to your preference
  color: Colors.black, // Adjust text color to your preference
); // Adjust font size to your preference
const customTabIndicatorSize = TabBarIndicatorSize.label;
const InputDecoration kInputDecoration = InputDecoration(
  hintText: 'Search...',
  contentPadding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
  helperStyle: kHintTextStyle,
  border: InputBorder.none,
  prefixIcon: Icon(Icons.search, color: Colors.grey),
);
// Example modification in styles.dart
BoxDecoration getSearchBoxDecoration(BuildContext context) {
  final Color borderColor = Theme.of(context).dividerColor;
  return BoxDecoration(
    border: Border.all(color: borderColor),
    borderRadius: BorderRadius.circular(8),
  );
}

final customThemeData = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.blueAccent,
  ),
  // ... Other theme data
);
