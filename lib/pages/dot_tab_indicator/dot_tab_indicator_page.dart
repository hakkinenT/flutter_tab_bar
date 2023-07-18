import 'package:flutter/material.dart';

import '../../tab_indicators/dot_tab_indicator.dart';

class DotTabIndicatorPage extends StatefulWidget {
  const DotTabIndicatorPage({super.key});

  @override
  State<DotTabIndicatorPage> createState() => _DotTabIndicatorPageState();
}

class _DotTabIndicatorPageState extends State<DotTabIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dot tab bar'),
          bottom: const TabBar(
              indicator: DotTabIndicator(radius: 4, color: Colors.black),
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
