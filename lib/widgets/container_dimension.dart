import 'package:flutter/material.dart';

class ContainerDimension extends StatelessWidget {
  const ContainerDimension({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Length',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PublicSans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(width: deviceWidth * (24 / 1440)),
                Text(
                  '39.46ft',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PublicSans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff212121),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * (16 / 873)),
            Row(
              children: [
                Text(
                  'Width',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Public Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(width: deviceWidth * (24 / 1440)),
                Text(
                  '7.70 ft',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PublicSans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff212121),
                  ),
                ),
              ],
            ),
            SizedBox(height: deviceHeight * (16 / 873)),
            Row(
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PublicSans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff666666),
                  ),
                ),
                SizedBox(width: deviceWidth * (24 / 1440)),
                Text(
                  '7.84 ft',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'PublicSans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff212121),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(width: deviceWidth * (48 / 1440)),
        Image.asset('assets/images/container.png', width: 255, height: 96),
      ],
    );
  }
}
