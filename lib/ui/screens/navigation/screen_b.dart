import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Text('Screen B'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.red),
            ),
            label: Text('Back'),
            icon: Icon(Icons.arrow_back),
          ),
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/c');
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.green),
            ),
            label: Text('Screen C'),
            icon: Icon(Icons.arrow_forward),
          )
        ]),
      ),
    );
  }
}
