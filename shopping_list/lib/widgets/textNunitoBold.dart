import 'package:flutter/material.dart';
import '../utils/colors_app.dart';

class TextNunitoBold extends StatelessWidget {

  final double screenWidth;
  final double percentScreen;
  final String msg;

  TextNunitoBold({required this.screenWidth, required this.percentScreen, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: TextStyle(
        fontSize: screenWidth * percentScreen,
        color: ColorsApp.dark_textColor,
        decoration: TextDecoration.none,
        fontFamily: 'Nunito',
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
