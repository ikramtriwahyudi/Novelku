import 'package:flutter/material.dart';
import 'package:novelku/color_palette/colorpalette.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key});

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
              child: Image.asset(
                "assets/1.jpeg",
                fit: BoxFit.cover,
                height: 205,
                width: 190,
              ),
            ),
            const ListTile(
              title: Center(
                child: Text(
                  "Rasa dan Aksara",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
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
