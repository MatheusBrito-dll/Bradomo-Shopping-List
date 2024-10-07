import 'package:flutter/material.dart';

class RectangleButton1 extends StatelessWidget {
  final String text;
  final IconData icone;
  final VoidCallback onPressed;
  final double screenWidth;
  final double percentScreen;
  final Color? buttonColor;
  final Color? iconColor;
  final Color? textColor;

  RectangleButton1({
    required this.onPressed,
    required this.icone,
    required this.text,
    required this.screenWidth,
    required this.percentScreen,
    this.buttonColor,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icone,
              size: screenWidth * percentScreen + 5,
              color: iconColor ?? Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: screenWidth * percentScreen,
                color: textColor ?? Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
