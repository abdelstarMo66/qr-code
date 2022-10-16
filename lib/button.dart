import 'package:flutter/material.dart';

Widget Button({
  required String? text,
  required VoidCallback? tap,
}) =>
    SizedBox(
      width: 200,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: tap,
        color: Colors.indigo[400],
        height: 45,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
