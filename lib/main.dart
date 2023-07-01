import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:novelku/routes/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
    );
  }
}
