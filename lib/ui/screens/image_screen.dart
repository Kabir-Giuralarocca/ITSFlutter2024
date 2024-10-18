import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image')),
      body: const Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: NetworkImage(
              'https://images.pexels.com/photos/440731/pexels-photo-440731.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            ),
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipOval(
              child: Image(
                image: AssetImage('assets/images/background-image.jpg'),
                width: 240,
                height: 240,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
          Icon(
            Icons.favorite,
            size: 64,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
