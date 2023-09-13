import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        textTheme: GoogleFonts.robotoTextTheme().copyWith(
          titleLarge: GoogleFonts.roboto(fontSize: 26, fontWeight: FontWeight.w700),
          titleMedium: GoogleFonts.roboto(fontSize: 14, fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.roboto(),
          bodySmall: GoogleFonts.roboto(fontSize: 20,),
        ),
      ),
    );
  }
}
