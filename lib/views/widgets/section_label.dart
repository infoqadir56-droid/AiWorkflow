import 'package:flutter/material.dart';

class SectionLabel extends StatelessWidget {
  const SectionLabel(this.title, {super.key, this.color = const Color(0xFFB9B9B9)});

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 3, bottom: 7),
        child: Text(title, style: TextStyle(color: color, fontSize: 9, fontWeight: FontWeight.w600)),
      );
}
