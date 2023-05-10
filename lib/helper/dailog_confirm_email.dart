import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogConfirmEmail extends StatelessWidget {
  final String? title, message;
  final VoidCallback? buttonClick;

  const DialogConfirmEmail({
    Key? key,
    this.title = '',
    required this.message,
    required this.buttonClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoAlertDialog(
            title: title != ''
                ? Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: CupertinoColors.black),
                  )
                : null,
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    message!,
                    style: const TextStyle(color: CupertinoColors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.mark_email_read_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 80,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t see an email? ',
                          style: TextStyle(color: CupertinoColors.black)),
                      InkWell(
                        onTap: buttonClick,
                        child: const Text(
                          'send again',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: CupertinoColors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        : AlertDialog(
            backgroundColor: const Color(0xFFd9d9d9).withOpacity(0.92),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: title != ''
                ? Text(
                    title!,
                    textAlign: TextAlign.center,
                  )
                : null,
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    message!,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Icon(
                    Icons.mark_email_read_outlined,
                    color: Theme.of(context).primaryColor,
                    size: 80,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t see an email? '),
                      InkWell(
                        onTap: () {
                          print('Dialog text clicked');
                        },
                        child: const Text(
                          'send again',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // actions: <Widget>[
            //   TextButton(
            //     onPressed: buttonClick,
            //     child: Text(button!),
            //   ),
            // ],
          );
  }
}
