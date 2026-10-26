import 'package:flutter/material.dart';

import '../../models/drawing_item.dart';

class FeaturedCard extends StatelessWidget {
  const FeaturedCard({super.key, required this.item});

  final DrawingItem item;

  @override
  Widget build(BuildContext context) => Container(
        height: 97,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(color: item.background, borderRadius: BorderRadius.circular(16)),
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Theme', style: TextStyle(color: Color(0xFF9A9A9A), fontSize: 6)),
                  const SizedBox(height: 2),
                  Text(item.title, style: const TextStyle(color: Color(0xFF161616), fontSize: 10, height: 1.03, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Positioned(
              right: -3,
              bottom: -9,
              child: Container(
                width: 41,
                height: 57,
                decoration: BoxDecoration(color: item.artColor.withValues(alpha: .55), borderRadius: BorderRadius.circular(17)),
                child: Center(child: Text(item.art, style: const TextStyle(fontSize: 34))),
              ),
            ),
          ],
        ),
      );
}
