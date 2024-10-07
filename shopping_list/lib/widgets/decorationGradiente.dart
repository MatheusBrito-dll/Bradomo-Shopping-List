import 'package:flutter/material.dart';
import '../utils/colors_app.dart';

class AppDecorations {
  static BoxDecoration gradientBoxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          ColorsApp.dark_secundaryColor,
          ColorsApp.dark_primaryColor,
        ],
      ),
    );
  }
}
