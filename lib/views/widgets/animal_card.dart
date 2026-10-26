import 'package:flutter/material.dart';

import '../../models/drawing_item.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key, required this.item});

  final DrawingItem item;

  @override
  Widget build(BuildContext context) => Container(
        height: 97,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: item.background,
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: const Color(0xFF272929), width: .6),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 9, 5, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.subtitle, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(color: Colors.white54, fontSize: 5)),
                  const SizedBox(height: 2),
                  Text(item.title, style: const TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            Positioned(left: 0, right: 0, top: 33, child: Center(child: Text(item.art, style: const TextStyle(fontSize: 38)))),
          ],
        ),
      );
}
