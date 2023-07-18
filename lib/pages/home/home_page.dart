import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/underline_gradient_tab_indicator/underline_gradient_tab_indicator_page.dart';

import '../dot_tab_indicator/dot_tab_indicator_page.dart';
import '../rounded_corner_tab_indicator/rounded_corner_tab_indicator_page.dart';
import '../rounded_tab_indicator/rounded_tab_indicator_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Tab Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DotTabIndicatorPage(),
                  ),
                );
              },
              child: const Text('Dot Tab Indicator'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RoundedTabIndicatorPage(),
                  ),
                );
              },
              child: const Text('Rounded Tab Indicator'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const RoundedCornerTabIndicatorPage(),
                  ),
                );
              },
              child: const Text('Rounded Corner Tab Indicator'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const UnderlineGradientTabIndicatorPage(),
                  ),
                );
              },
              child: const Text('Underline Gradient Tab Indicator'),
            ),
          ],
        ),
      ),
    );
  }
}
