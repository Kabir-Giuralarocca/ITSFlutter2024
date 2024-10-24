import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(children: [
          Icon(Icons.phone, color: Colors.blue),
          Text('CALL', style: TextStyle(color: Colors.blue)),
        ]),
        Column(children: [
          Icon(Icons.near_me, color: Colors.blue),
          Text('ROUTE', style: TextStyle(color: Colors.blue)),
        ]),
        Column(children: [
          Icon(Icons.share, color: Colors.blue),
          Text('SHARE', style: TextStyle(color: Colors.blue)),
        ]),
      ],
    );
  }
}
