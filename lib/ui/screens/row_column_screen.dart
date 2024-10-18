import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({super.key});

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  void _changeMain() {
    setState(() {
      _mainAxisAlignment = switch (_mainAxisAlignment) {
        MainAxisAlignment.start => MainAxisAlignment.end,
        MainAxisAlignment.end => MainAxisAlignment.center,
        MainAxisAlignment.center => MainAxisAlignment.spaceBetween,
        MainAxisAlignment.spaceBetween => MainAxisAlignment.spaceAround,
        MainAxisAlignment.spaceAround => MainAxisAlignment.spaceEvenly,
        MainAxisAlignment.spaceEvenly => MainAxisAlignment.start,
      };
    });
  }

  void _changeCross() {
    setState(() {
      _crossAxisAlignment = switch (_crossAxisAlignment) {
        CrossAxisAlignment.start => CrossAxisAlignment.end,
        CrossAxisAlignment.end => CrossAxisAlignment.center,
        CrossAxisAlignment.center => CrossAxisAlignment.stretch,
        CrossAxisAlignment.stretch => CrossAxisAlignment.baseline,
        CrossAxisAlignment.baseline => CrossAxisAlignment.start,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row and Column')),
      body: Column(
        children: [
          const Text('Row'),
          Container(
            color: Colors.grey.shade300,
            height: 120,
            child: Row(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          const Text('Column'),
          Container(
            color: Colors.grey.shade300,
            width: 120,
            height: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: _mainAxisAlignment,
              crossAxisAlignment: _crossAxisAlignment,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 60,
                  height: 60,
                  color: Colors.blue,
                ),
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Text('$_mainAxisAlignment'),
          Text('$_crossAxisAlignment'),
          FilledButton(
            onPressed: _changeMain,
            child: const Text('MainAxisAlignment'),
          ),
          FilledButton(
            onPressed: _changeCross,
            child: const Text('CrossAxisAlignment'),
          ),
        ],
      ),
    );
  }
}
