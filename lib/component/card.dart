import 'package:flutter/material.dart';
import 'package:novelku/color_palette/colorpalette.dart';

class CardItem extends StatefulWidget {
  final Widget image;
  final String title;

  const CardItem({
    super.key,
    required this.image,
    required this.title,
  });

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: 190,
      child: Card(
        elevation: 5,
        shadowColor: Colorpalette.secondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              child: widget.image,
            ),
            ListTile(
              title: Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14.5,
                      color: Colorpalette.secondaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
