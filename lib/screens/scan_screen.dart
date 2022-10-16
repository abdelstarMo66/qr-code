import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:qr_code/button.dart';

class ScanQR extends StatefulWidget {
  @override
  State<ScanQR> createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {
  var qrstr = "let's Scan it";
  File? photod;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              qrstr,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 50,
            ),
            Button(text: 'Tap To Scanning', tap: Scan),
            const SizedBox(
              height: 15,
            ),
           // Button(text: 'On Gallery', tap: getimage),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> Scan() async {
    await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Cancel',
      true,
      ScanMode.QR,
    ).then((value) {
      setState(() {
        qrstr = value;
      });
    }).catchError((e) {
      setState(() {
        qrstr = 'unable to read this';
      });
    });
  }

}
