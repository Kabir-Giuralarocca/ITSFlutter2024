import 'package:corso_flutter_2024/ui/widgets/star_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon')),
      body: const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.person, size: 64, color: Colors.teal),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Icon(Symbols.favorite, size: 48, color: Colors.red, weight: 200),
              Icon(Symbols.favorite, size: 48, color: Colors.red, weight: 300),
              Icon(Symbols.favorite, size: 48, color: Colors.red, weight: 500),
              Icon(Symbols.favorite, size: 48, color: Colors.red, weight: 600),
              Icon(Symbols.favorite, size: 48, color: Colors.red, weight: 700),
            ]),
          ),
          StarIcon(),
          SizedBox(height: 8),
          Text('Tap on the Star to change the fill value.')
        ]),
      ),
    );
  }
}
