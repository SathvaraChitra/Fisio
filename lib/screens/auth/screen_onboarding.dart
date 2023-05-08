import 'package:flutter/material.dart';

class ScreenOnBoarding extends StatelessWidget {
  static String pageId = '/screenOnBoarding';

  const ScreenOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (BuildContext context, int index) =>
                 OnBoardContent(size: size,
                  image: 'assets/images/welcome.png',
                  title: '1. Set up your Firebase project ',
                  description: '1. Set up your Firebase project · Security: '
                      'Shorter TTLs provide stronger security, because',),
              ),
            ),
            ElevatedButton(
              onPressed: () {},

              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(size.width * 0.5,size.height * 0.06)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Start',
                    style: TextStyle(fontSize: 20) ,),
                  Icon(Icons.navigate_next),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.2,)
          ],
        ),
      ),
    );
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    required this.size, required this.image, required this.title, required this.description,
  }) : super(key: key);

  final Size size;
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.05,
        ),
        Container(
            width: size.width * 0.3,
            height: size.height * 0.2,
            child: Image.asset( image,)),
        SizedBox(
          height: size.height * 0.3,
        ),
         Text(title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(description,
            style: const TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center),
      ],
    );
  }
}
