import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Filled'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Elevated'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Outlined'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Text'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star),
                  ),
                ]),
                const Column(children: [
                  FilledButton(
                    onPressed: null,
                    child: Text('Filled'),
                  ),
                  ElevatedButton(
                    onPressed: null,
                    child: Text('Elevated'),
                  ),
                  OutlinedButton(
                    onPressed: null,
                    child: Text('Outlined'),
                  ),
                  TextButton(
                    onPressed: null,
                    child: Text('Text'),
                  ),
                  IconButton(
                    onPressed: null,
                    icon: Icon(Icons.star),
                  ),
                ]),
              ],
            ),
            const SizedBox(height: 24),
            FilledButton(
              onPressed: () {},
              style: buttonStyle,
              child: const Text('Button'),
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              style: buttonStyle,
              child: const Text('Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: const Text('Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text('Button with Icon'),
              icon: const Icon(Icons.star),
            ),
          ],
        ),
      ),
    );
  }
}

ButtonStyle buttonStyle = ButtonStyle(
  backgroundColor: WidgetStateProperty.resolveWith((states) {
    return states.contains(WidgetState.pressed) ? Colors.red : Colors.blue;
  }),
  foregroundColor: const WidgetStatePropertyAll(Colors.white),
  textStyle: const WidgetStatePropertyAll(TextStyle(fontSize: 24)),
  padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 16, horizontal: 24)),
  minimumSize: const WidgetStatePropertyAll(Size.fromHeight(48)),
  side: const WidgetStatePropertyAll(
    BorderSide(color: Colors.black, width: 4),
  ),
  shape: const WidgetStatePropertyAll(
    RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
  ),
  elevation: const WidgetStatePropertyAll(16),
  shadowColor: const WidgetStatePropertyAll(Colors.green),
);
