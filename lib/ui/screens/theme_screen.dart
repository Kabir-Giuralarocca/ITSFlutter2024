import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Theme')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(children: [
            FilledButton(
              onPressed: () {},
              child: Text('App Theme'),
            ),
            Theme(
              data: Theme.of(context).copyWith(
                filledButtonTheme: FilledButtonThemeData(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                ),
              ),
              child: Column(
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: Text('Parent Theme'),
                  ),
                  FilledButton(
                    onPressed: () {},
                    child: Text('Widget Theme'),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
