import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final bool isIcon;
  final String title;
  final Widget? icon;
  const Button({super.key, required this.width, required this.isIcon, required this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 122,
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color(0x0D0139FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
            side: const BorderSide(color: Color(0xff0139FF), width: 1),
          ),
        ),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(isIcon && icon != null)
              icon!,
            if(isIcon) SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'PublicSans',
                fontWeight: FontWeight.w500,
                color: const Color(0xff0139FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
