import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../styles/styles.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BoxDecoration boxDecoration = getSearchBoxDecoration(context);
    return Container(
      width: 200.0, // Assume this is the desired width
      decoration: boxDecoration,
      child: TypeAheadField(
        textFieldConfiguration: const TextFieldConfiguration(
            style: kTextStyle12, decoration: kInputDecoration),
        suggestionsCallback: (pattern) async {
          // Replace with your data fetching logic
          return ["Suggestion 1", "Suggestion 2", "Suggestion 3"];
        },
        itemBuilder: (context, suggestion) {
          return ListTile(
            title: Text(suggestion),
          );
        },
        onSuggestionSelected: (suggestion) {
          // Handle suggestion selection
        },
      ),
    );
  }
}
