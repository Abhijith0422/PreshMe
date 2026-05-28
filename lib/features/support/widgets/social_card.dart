import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/widgets/glass_container.dart';

Widget socialCard({
  required FaIconData icon,
  required String title,
}) {
  return GlassContainer(
    child: Column(
      children: [
        FaIcon(
          icon,
          color: Colors.white,
          size: 28,
        ),

        const SizedBox(height: 14),

        Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}