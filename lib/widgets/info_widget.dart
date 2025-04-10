import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/info-circle.png',
          height: 16,
          width: 16,
          color: Colors.black,
        ),
        SizedBox(width: 8),
        Flexible(
          child: Text(
            'To obtain accurate rate for spot rate with guaranteed space and booking, please ensure your container count and weight per container is accurate.',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'PublicSans',
              fontWeight: FontWeight.w400,
              color: Color(0xff666666),
            ),
          ),
        ),
      ],
    );
  }
}
