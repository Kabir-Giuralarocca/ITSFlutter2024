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
      body: ListView(children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ImageSection(
                url:
                    'https://images.pexels.com/photos/440731/pexels-photo-440731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            ImageSection(
                url:
                    'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
          ]),
        ),
        TitleSection(),
        ButtonsSection(),
        TextSection(),
      ]),
    );
  }
}
