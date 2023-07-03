import 'package:flutter/material.dart';

class ButtonItem extends StatefulWidget {
  String judul;
  String review;
  String reviewItem;
  Widget button;

  ButtonItem({
    super.key,
    required this.judul,
    required this.review,
    required this.reviewItem,
    required this.button,
  });

  @override
  State<ButtonItem> createState() => _ButtonItemState();
}

class _ButtonItemState extends State<ButtonItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.judul,
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.review,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            widget.reviewItem,
            style: const TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(child: ElevatedButton(onPressed: () {}, child: widget.button))
        ],
      ),
    );
  }
}
