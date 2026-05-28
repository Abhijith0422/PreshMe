import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,

      style: const TextStyle(
        color: Color(0xFF9B5CFF),
        fontWeight: FontWeight.w700,
        letterSpacing: 2,
        fontSize: 13,
      ),
    );
  }
}