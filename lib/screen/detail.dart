import 'package:flutter/material.dart';
import 'package:novelku/component/buttonitem.dart';

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
                  "assets/4.jpeg",
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
          ButtonItem(
            judul: 'rasa dalam aksara',
            review: 'review',
            reviewItem:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker',
            button: const Text("mulai membaca"),
          ),
        ],
      ),
    );
  }
}
