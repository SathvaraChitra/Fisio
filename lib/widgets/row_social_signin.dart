import 'package:flutter/material.dart';

class RowSocialSignIn extends StatelessWidget {
  final VoidCallback btnGoogleSignIn, btnAppleSignIn, btnFBSignIn;

  const RowSocialSignIn({
    Key? key,
    required this.btnGoogleSignIn,
    required this.btnAppleSignIn,
    required this.btnFBSignIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: btnGoogleSignIn,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child:
                Image.asset('assets/images/ic_google.png', fit: BoxFit.cover),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: btnAppleSignIn,
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              'assets/images/ic_apple.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: btnFBSignIn,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            height: 50,
            width: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child:
                Image.asset('assets/images/ic_facebook.png', fit: BoxFit.cover),
          ),
        )
      ],
    );
  }
}
