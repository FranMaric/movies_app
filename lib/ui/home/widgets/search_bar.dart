import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    this.hintText,
    this.onSearch,
    Key? key,
  }) : super(key: key);

  /// Displayed on top of the text when the input is empty
  final String? hintText;

  /// Called when search icon is pressed or when search icon on keyboard is pressed
  /// Given parameter is current search value
  final void Function(String)? onSearch;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        style: Theme.of(context).inputDecorationTheme.hintStyle,
        textInputAction: TextInputAction.search,
        onSubmitted: onSearch,
        controller: _controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: IconButton(
              onPressed: () {
                if (onSearch != null) {
                  onSearch!(_controller.text);
                }
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
