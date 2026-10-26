import 'package:flutter/foundation.dart';

class DiscoverController extends ChangeNotifier {
  bool _showRecent = false;
  int _selectedNavigation = 0;

  bool get showRecent => _showRecent;
  int get selectedNavigation => _selectedNavigation;

  void selectTab(bool showRecent) {
    if (_showRecent == showRecent) return;
    _showRecent = showRecent;
    notifyListeners();
  }

  void selectNavigation(int index) {
    if (_selectedNavigation == index) return;
    _selectedNavigation = index;
    notifyListeners();
  }
}
