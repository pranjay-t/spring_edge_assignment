import 'package:flutter/material.dart';
import 'package:spring_edge_assignment/components/hoverable_checkbox.dart';

class ShiptypeWidget extends StatefulWidget {
  const ShiptypeWidget({super.key});

  @override
  State<ShiptypeWidget> createState() => _ShiptypeWidgetState();
}

class _ShiptypeWidgetState extends State<ShiptypeWidget> {
  bool _fclChecker = true;
  bool _lclChecker = false;
  void changeFCLChecker(bool value) {
    setState(() {
      _fclChecker = value;
    });
  }

  void changeLCLChecker(bool value) {
    setState(() {
      _lclChecker = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            HoverableCheckbox(value: _fclChecker, onChanged: changeFCLChecker),

            SizedBox(width: 12),
            const Text(
              'FCL',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'PublicSans',
                fontWeight: FontWeight.w400,
                color: Color(0xff212121),
              ),
            ),
          ],
        ),
        SizedBox(width: 24),
        Row(
          children: [
            HoverableCheckbox(value: _lclChecker, onChanged: changeLCLChecker),
            SizedBox(width: 12),
            const Text(
              'LCL',
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
    );
  }
}
