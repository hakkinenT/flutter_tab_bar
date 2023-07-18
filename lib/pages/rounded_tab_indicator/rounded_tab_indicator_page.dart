import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/tab_indicators/rounded_tab_indicator.dart';

class RoundedTabIndicatorPage extends StatefulWidget {
  const RoundedTabIndicatorPage({super.key});

  @override
  State<RoundedTabIndicatorPage> createState() =>
      _RoundedTabIndicatorPageState();
}

class _RoundedTabIndicatorPageState extends State<RoundedTabIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Rounded tab bar'),
          bottom: const TabBar(indicator: RoundedTabIndicator(), tabs: [
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
