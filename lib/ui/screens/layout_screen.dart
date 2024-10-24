import 'package:corso_flutter_2024/ui/widgets/layout/buttons_section.dart';
import 'package:corso_flutter_2024/ui/widgets/layout/image_section.dart';
import 'package:corso_flutter_2024/ui/widgets/layout/text_section.dart';
import 'package:corso_flutter_2024/ui/widgets/layout/title_section.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout')),
      body: Column(children: [
        ImageSection(),
        TitleSection(),
        ButtonsSection(),
        TextSection(),
      ]),
    );
  }
}
