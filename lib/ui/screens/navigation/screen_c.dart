import 'package:corso_flutter_2024/ui/screens/navigation/screen_d.dart';
import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Screen C'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ScreenD(text: 'Ciao')),
              );
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.orange),
            ),
            label: Text('Screen D'),
            icon: Icon(Icons.arrow_forward),
          ),
          FilledButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/d', arguments: 'Lorem Ipsum');
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.orange),
            ),
            label: Text('Screen D named'),
            icon: Icon(Icons.arrow_forward),
          ),
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
