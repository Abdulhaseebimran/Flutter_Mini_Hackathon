import 'package:flutter/material.dart';

Future<void> dialogBox(BuildContext context, alertText) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: Text(alertText),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Ok',
                  style: TextStyle(color: Colors.pink),
                ))
          ],
        );
      });
}