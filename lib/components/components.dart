import 'package:flutter/material.dart';

Widget defaultButtom({
  required Function()? onPressed,
  required String text,
}) =>
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
      ),
      onPressed: onPressed,
      child: Text(
        '$text',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
