import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Ut sunt cupidatat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'Lorem tempor voluptate excepteur eu nulla id exercitation sinvuisnviunsifn fsujnfisnfn es fisnfjs fj esfjni',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                color: Colors.grey.shade500,
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 4),
          child: Icon(Icons.star, color: Colors.red),
        ),
        Text('40'),
      ]),
    );
  }
}
