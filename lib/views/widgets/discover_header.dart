import 'package:flutter/material.dart';

class DiscoverHeader extends StatelessWidget {
  const DiscoverHeader({super.key});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 11, 7),
        child: Row(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(color: const Color(0xFF202525), borderRadius: BorderRadius.circular(8)),
              child: const Center(child: Text('🎨', style: TextStyle(fontSize: 16))),
            ),
            const Spacer(),
            const Icon(Icons.auto_awesome, size: 13, color: Colors.white70),
            const SizedBox(width: 4),
            const Text('Full Power', style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w600)),
          ],
        ),
      );
}
