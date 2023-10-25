// lib/styles/styles.dart

import 'package:flutter/material.dart';

const TextStyle kTextStyle12 = TextStyle(fontSize: 12);
const TextStyle kHintTextStyle = TextStyle(color: Colors.grey);
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

