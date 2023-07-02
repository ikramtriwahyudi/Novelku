import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 320,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/1.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                height: 140,
                left: 20,
                child: IconButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
