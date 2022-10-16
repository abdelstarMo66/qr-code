import 'package:flutter/material.dart';
import 'package:qr_code/screens/layout.dart';

void main() {
  runApp(QRcode());
}

class QRcode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.indigo[400],
            elevation: 0.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(35),
              ),
            ),
            titleTextStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            iconTheme: const IconThemeData(color: Colors.black, size: 30)),
      ),
      home: HomeLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
