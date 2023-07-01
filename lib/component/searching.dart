import 'package:flutter/material.dart';
import 'package:novelku/color_palette/colorpalette.dart';

class Searching extends StatefulWidget {
  const Searching({
    super.key,
  });

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: Colorpalette.primaryColor,
          focusColor: Colorpalette.primaryColor,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          prefixIcon: const Icon(
            Icons.search,
            size: 35,
            color: Colorpalette.primaryColor,
          ),
          hintText: 'Search'),
    );
  }
}
