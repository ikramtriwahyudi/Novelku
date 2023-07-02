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
                      children: [
                        CardItem(
                          image: Image.asset(
                            "assets/1.jpeg",
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                          title: 'Rasa Dalam Aksara',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CardItem(
                            image: Image.asset(
                              "assets/2.jpeg",
                              height: 205,
                              width: 205,
                              fit: BoxFit.cover,
                            ),
                            title: 'Hilang Untuk Healing')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CardItem(
                          image: Image.asset(
                            "assets/3.jpeg",
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                          title: 'Rumit',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CardItem(
                            image: Image.asset(
                              "assets/4.jpeg",
                              height: 205,
                              width: 205,
                              fit: BoxFit.cover,
                            ),
                            title: 'Myself Or Yourself')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CardItem(
                          image: Image.asset(
                            "assets/3.jpeg",
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                          title: 'Rumit',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CardItem(
                            image: Image.asset(
                              "assets/4.jpeg",
                              height: 205,
                              width: 205,
                              fit: BoxFit.cover,
                            ),
                            title: 'Myself Or Yourself')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CardItem(
                          image: Image.asset(
                            "assets/3.jpeg",
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                          title: 'Rumit',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CardItem(
                            image: Image.asset(
                              "assets/4.jpeg",
                              height: 205,
                              width: 205,
                              fit: BoxFit.cover,
                            ),
                            title: 'Myself Or Yourself')
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        CardItem(
                          image: Image.asset(
                            "assets/3.jpeg",
                            height: 205,
                            width: 205,
                            fit: BoxFit.cover,
                          ),
                          title: 'Rumit',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        CardItem(
                            image: Image.asset(
                              "assets/4.jpeg",
                              height: 205,
                              width: 205,
                              fit: BoxFit.cover,
                            ),
                            title: 'Myself Or Yourself')
                      ],
                    ),
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
