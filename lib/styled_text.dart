import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello worlds!',
      style: TextStyle(fontSize: 24, color: Colors.white),
    );
  }
}
