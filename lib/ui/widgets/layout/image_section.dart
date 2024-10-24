import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      height: 360,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width - 80,
    );
  }
}
