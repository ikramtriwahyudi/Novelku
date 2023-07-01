import 'package:flutter/material.dart';
import 'package:novelku/color_palette/colorpalette.dart';
import 'package:novelku/component/card.dart';
import 'package:novelku/component/searching.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 90, right: 20, left: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 400,
                  child: Searching(),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Daftar Novel",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colorpalette.secondaryColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: const [
                        CardItem(),
                        SizedBox(
                          width: 10,
                        ),
                        CardItem(),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
