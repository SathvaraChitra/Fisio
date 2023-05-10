import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogSuccessSignup extends StatelessWidget {
  final String title, message,description, button;
  final VoidCallback? buttonClick;

  const DialogSuccessSignup({Key? key,
    required this.title,
    required this.message,
    required this.button,
    required this.description,
    this.buttonClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.mark_email_read_outlined,
              color: Theme.of(context).primaryColor,
              size: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              title,
              style: const TextStyle(color: CupertinoColors.black),
            ),
            Text(
              message,
              style: const TextStyle(color: CupertinoColors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              style: const TextStyle(color: CupertinoColors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: buttonClick,
                child: Text(button,style: const TextStyle(color: CupertinoColors.white),),
              ),
            ),
          ],
        ),
      ),
    )
    : AlertDialog(
      backgroundColor: const Color(0xFFd9d9d9).withOpacity(0.92),
      shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle_outline,
              color: Colors.green,
              size: 80,
            ),
            const SizedBox(height: 20,),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              message,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                  onPressed: buttonClick,
                  child: Text(button,
                  style: const TextStyle(
                      color: Colors.white,
                  fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
