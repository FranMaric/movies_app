import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    this.controller,
    this.hintText,
    Key? key,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
