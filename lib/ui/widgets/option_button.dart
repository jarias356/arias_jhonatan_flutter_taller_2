import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OptionButton extends StatelessWidget {
  final IconData icon;
  final Widget buttonWidget;

  const OptionButton({super.key, required this.icon, required this.buttonWidget});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48),
            const SizedBox(height: 8),
            buttonWidget
          ],
        ),
      ),
    );
  }
}
