import 'package:corso_flutter_2024/ui/widgets/container_widget.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container')),
      body: const Column(children: [
        ContainerWidget(),
        Text('Tap on the small Container to change its position.'),
      ]),
    );
  }
}
