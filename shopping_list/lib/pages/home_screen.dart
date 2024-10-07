import 'package:flutter/material.dart';
import '../widgets/decorationGradiente.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.gradientBoxDecoration(),
      child: Column(),
    );
  }
}
