import 'package:flutter/material.dart';
import 'package:qr_code/screens/create_screen.dart';
import 'package:qr_code/screens/scan_screen.dart';

import '../button.dart';

class HomeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: const [
          Icon(Icons.qr_code_2_outlined),
          SizedBox(
            width: 10,
          ),
          Text('QR Code'),
        ],
      )),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Button(
              text: "Create QR Code",
              tap: () {
                NavigateTo(context: context, Widget: CreateQR());
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Button(
              text: 'Scan QR Code',
              tap: () {
                NavigateTo(context: context, Widget: ScanQR());
              },
            ),
          ],
        ),
      ),
    );
  }

  void NavigateTo({required context, required Widget}) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => Widget));
}
