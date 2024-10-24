import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView')),
      body: ListView.separated(
        padding: EdgeInsets.all(16),
        itemCount: 50,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text('Item $index'),
            subtitle: Text('Lorem ipsum'),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.amber, height: 16);
        },
      ),
    );
  }
}
