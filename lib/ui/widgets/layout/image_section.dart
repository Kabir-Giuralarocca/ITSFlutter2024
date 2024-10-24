import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/440731/pexels-photo-440731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      height: 360,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
    );
  }
}
