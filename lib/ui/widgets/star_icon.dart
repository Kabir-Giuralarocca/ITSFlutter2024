import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class StarIcon extends StatefulWidget {
  const StarIcon({super.key});

  @override
  State<StarIcon> createState() => _StarIconState();
}

class _StarIconState extends State<StarIcon> {
  double _fill = 1;

  void _fillIcon() {
    setState(() => _fill = _fill == 0 ? 1 : 0);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _fillIcon,
      child: Icon(
        Symbols.star,
        size: 64,
        color: Colors.amber,
        fill: _fill,
      ),
    );
  }
}
