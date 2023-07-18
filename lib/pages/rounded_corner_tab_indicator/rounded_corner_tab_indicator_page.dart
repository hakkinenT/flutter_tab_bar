import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/tab_indicators/rounded_tab_indicator.dart';

class RoundedCornerTabIndicatorPage extends StatefulWidget {
  const RoundedCornerTabIndicatorPage({super.key});

  @override
  State<RoundedCornerTabIndicatorPage> createState() =>
      _RoundedCornerTabIndicatorPageState();
}

class _RoundedCornerTabIndicatorPageState
    extends State<RoundedCornerTabIndicatorPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Rounded tab bar'),
          bottom: TabBar(
              overlayColor: _orvelayColor(),
              indicator: RoundedTabIndicator(
                  radius: 30,
                  width: 120,
                  height: 30,
                  color: Colors.blue.shade100),
              tabs: const [
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

  MaterialStateProperty<Color?> _orvelayColor() {
    return MaterialStateProperty.resolveWith<Color?>(
      (states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.white;
        }

        return null;
      },
    );
  }
}
