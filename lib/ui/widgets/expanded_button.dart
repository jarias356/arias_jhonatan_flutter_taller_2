import 'dart:ui';

import 'package:flutter/material.dart';

class ExpandedButton extends StatelessWidget {
  final Color color;

  const ExpandedButton({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: null,
        child: const Text(''),
      ),
    );
  }
}
