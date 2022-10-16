import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQR extends StatefulWidget {
  @override
  State<CreateQR> createState() => _CreateQRState();
}

class _CreateQRState extends State<CreateQR> {
  var data = "Hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create QR'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BarcodeWidget(
              barcode: Barcode.qrCode(), // Barcode type and settings
              data: data, // Content
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    data = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
