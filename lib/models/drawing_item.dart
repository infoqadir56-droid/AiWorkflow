import 'package:flutter/material.dart';

class DrawingItem {
  const DrawingItem({
    required this.title,
    required this.art,
    this.subtitle = '',
    this.background = const Color(0xFF101212),
    this.artColor = const Color(0xFFB79362),
    this.featured = false,
  });

  final String title;
  final String art;
  final String subtitle;
  final Color background;
  final Color artColor;
  final bool featured;
}
