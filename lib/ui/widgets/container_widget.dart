import 'dart:developer';

import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  late Alignment _childAlignment;

  @override
  void initState() {
    super.initState();
    _childAlignment = Alignment.topLeft;
  }

  void _changePosition() {
    setState(() {
      _childAlignment = switch (_childAlignment) {
        Alignment.topLeft => Alignment.topCenter,
        Alignment.topCenter => Alignment.topRight,
        Alignment.topRight => Alignment.centerLeft,
        Alignment.centerLeft => Alignment.center,
        Alignment.center => Alignment.centerRight,
        Alignment.centerRight => Alignment.bottomLeft,
        Alignment.bottomLeft => Alignment.bottomCenter,
        Alignment.bottomCenter => Alignment.bottomRight,
        Alignment.bottomRight => Alignment.topLeft,
        _ => Alignment.topLeft,
      };
      log('$_childAlignment');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: MediaQuery.of(context).size.width,
      height: 300,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      alignment: _childAlignment,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 4),
        gradient: const LinearGradient(
          colors: [Colors.amber, Colors.deepPurple],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(2, 2)),
        ],
      ),
      child: GestureDetector(
        onTap: _changePosition,
        child: const ContainerChild(),
      ),
    );
  }
}

class ContainerChild extends StatelessWidget {
  const ContainerChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black, width: 4),
        gradient: const LinearGradient(
          colors: [Colors.green, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(2, 2)),
        ],
      ),
    );
  }
}
