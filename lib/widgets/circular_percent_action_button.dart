import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';


class CircularPercentActionButton extends StatelessWidget {
  const CircularPercentActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 12),
      child: Container(
        width: kToolbarHeight,
        height: kToolbarHeight,
        padding: EdgeInsets.all(4),
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(45),
         color: Colors.white
       ),
        child: InkWell(
          onTap: (){},
          child: CircularPercentIndicator(
            backgroundColor: Colors.white,
            animation: true,
            radius: 24,
            linearGradient: LinearGradient(
                colors: [Colors.orange.withOpacity(0.2), Colors.orange],
                stops: const [0.1, 0.9]),
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text(
              '20%',
              style: TextStyle(
                  fontSize: 8, color: Colors.orange),
            ),
            percent: 0.2,
          ),
        ),
      ),
    );
  }
}