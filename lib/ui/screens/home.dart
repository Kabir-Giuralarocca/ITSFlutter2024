import 'package:corso_flutter_2024/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<R> items = R.values.where((r) => r != R.home).toList();
    return Scaffold(
      appBar: AppBar(title: Text('Corso Flutter 2024')),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              onTap: () {
                context.push(items[index].path);
              },
              title: Text(items[index].name),
              trailing: Icon(Icons.arrow_forward),
              shape: OutlineInputBorder(),
            ),
          );
        },
      ),
    );
  }
}
