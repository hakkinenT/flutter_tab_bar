import 'package:flutter/material.dart';

import '../../tab_indicators/underline_gradient_tab_indicator.dart';

class UnderlineGradientTabIndicatorPage extends StatelessWidget {
  const UnderlineGradientTabIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Underline Gradient tab bar'),
          bottom: const TabBar(
              indicator: UnderlineGradientTabIndicator(
                  strokeWidth: 4,
                  primaryColor: Colors.blue,
                  secondaryColor: Colors.red),
              tabs: [
                Tab(text: 'Frutas'),
                Tab(text: 'Verduras'),
                Tab(text: 'Legumes'),
              ]),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text('F'),
          ),
          Center(
            child: Text('V'),
          ),
          Center(
            child: Text('L'),
          ),
        ]),
      ),
    );
  }
}
