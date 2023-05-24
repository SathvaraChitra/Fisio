import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CustomFlexibleSpaceBar extends StatelessWidget {
  const CustomFlexibleSpaceBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Column(
        children: [
          const SizedBox(
            height: kToolbarHeight * 1.3,
          ),
          SizedBox(
            height: 50,
            child: Image.asset('assets/images/welcome.png'),
          ),
          const SizedBox(
            height: kToolbarHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                  color: Colors.white,
                ),
                child: CircularPercentIndicator(
                  animation: true,
                  radius: 100,
                  lineWidth: 15,
                  backgroundColor: Colors.white,
                  linearGradient: LinearGradient(
                      colors: [Colors.orange.withOpacity(0.2), Colors.orange],
                      stops: const [0.1, 0.9]),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        '30%',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        'Unit 1',
                        style: TextStyle(fontSize: 20, color: Colors.orange),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Start Training',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1),
                      ),
                      Text(
                        'Click Hear',
                        style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      )
                    ],
                  ),
                  percent: 0.3,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
