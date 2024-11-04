import 'package:flutter/material.dart';

class ScreenD extends StatelessWidget {
  const ScreenD({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Screen D'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(text),
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red),
            ),
            label: Text('Screen A'),
            icon: Icon(Icons.arrow_back),
          ),
        ]),
      ),
    );
  }
}
