import 'package:flutter/material.dart';

import '../controllers/discover_controller.dart';
import '../models/drawing_item.dart';
import 'widgets/animal_card.dart';
import 'widgets/discover_header.dart';
import 'widgets/featured_card.dart';
import 'widgets/section_label.dart';

const _lime = Color(0xFFD9F400);
const _ink = Color(0xFF080909);

const _featuredItems = [
  DrawingItem(title: 'Draw\na Chick', art: '🐥', background: Colors.white, artColor: Color(0xFFFFD64F), featured: true),
  DrawingItem(title: 'Draw\na Teddy Bear', art: '🧸', background: Colors.white, artColor: Color(0xFFB79362), featured: true),
];

const _animalItems = [
  DrawingItem(title: 'Lucky Turtle', art: '🐢', subtitle: 'A tiny friend with a big smile'),
  DrawingItem(title: 'Pig and Skate', art: '🐷', subtitle: 'Ready to roll!'),
  DrawingItem(title: 'Little Fox', art: '🦊', subtitle: 'A little forest adventure'),
  DrawingItem(title: 'Zebra', art: '🦓', subtitle: 'Stripes make it special'),
];

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  final DiscoverController _controller = DiscoverController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _controller,
        builder: (context, _) => Scaffold(
          backgroundColor: _lime,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 7, 8, 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Container(
                  color: _ink,
                  child: Column(
                    children: [
                      const DiscoverHeader(),
                      _buildTabs(),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.fromLTRB(8, 9, 8, 74),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SectionLabel('Today'),
                              Row(
                                children: [
                                  Expanded(child: FeaturedCard(item: _featuredItems[0])),
                                  const SizedBox(width: 7),
                                  Expanded(child: FeaturedCard(item: _featuredItems[1])),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const SectionLabel('Fun with animals', color: _lime),
                              Row(
                                children: [
                                  Expanded(child: AnimalCard(item: _animalItems[0])),
                                  const SizedBox(width: 7),
                                  Expanded(child: AnimalCard(item: _animalItems[1])),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  Expanded(child: AnimalCard(item: _animalItems[2])),
                                  const SizedBox(width: 7),
                                  Expanded(child: AnimalCard(item: _animalItems[3])),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildBottomNavigation(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildTabs() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          height: 28,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(color: const Color(0xFF1A1C1D), borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              _tab('Start', !_controller.showRecent, () => _controller.selectTab(false)),
              _tab('My Recent', _controller.showRecent, () => _controller.selectTab(true)),
            ],
          ),
        ),
      );

  Widget _tab(String title, bool active, VoidCallback onTap) => Expanded(
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: active ? const Color(0xFFC7D9CF) : Colors.transparent,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Text(
              title,
              style: TextStyle(color: active ? _ink : Colors.white, fontSize: 9, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      );

  Widget _buildBottomNavigation() => Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(color: Color(0xE9080909)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _navigationIcon(Icons.home_rounded, 0),
            _navigationIcon(Icons.brush_rounded, 1),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFCBCBCB), width: 2),
                ),
                child: const Icon(Icons.add, size: 22, color: _ink),
              ),
            ),
            _navigationIcon(Icons.auto_awesome, 2),
            _navigationIcon(Icons.person_outline_rounded, 3),
          ],
        ),
      );

  Widget _navigationIcon(IconData icon, int index) => GestureDetector(
        onTap: () => _controller.selectNavigation(index),
        child: Icon(
          icon,
          size: 17,
          color: _controller.selectedNavigation == index ? Colors.white : Colors.white38,
        ),
      );
}
