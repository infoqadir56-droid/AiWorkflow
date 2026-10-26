import 'package:flutter/material.dart';

import 'discover_page.dart';

class DoodleApp extends StatelessWidget {
  const DoodleApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doodle Club',
        theme: ThemeData(useMaterial3: true, fontFamily: 'Arial'),
        home: const DiscoverPage(),
      );
}
