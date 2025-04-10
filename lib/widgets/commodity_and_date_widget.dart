import 'package:flutter/material.dart';

class CommodityAndDateWidget extends StatelessWidget {
  const CommodityAndDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: deviceHeight * (56 / 873),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE8E8E8), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Commodity',
                    style: TextStyle(
                      color: Color(0xff9E9E9E),
                      fontSize: 16,
                      fontFamily: 'PublicSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xff707070),
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: Container(
            height: deviceHeight * (56 / 873),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: const Color(0xffE8E8E8), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Text(
                    'Cut Off Date',
                    style: TextStyle(
                      color: Color(0xff9E9E9E),
                      fontSize: 16,
                      fontFamily: 'PublicSans',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Image.asset(
                    'assets/images/calendar-2.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
