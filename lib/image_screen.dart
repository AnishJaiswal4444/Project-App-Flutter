import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Screen')),
      body: Center(
        child: Image.asset('assets/IMG-20230610-WA0005.jpg'),
      ),
    );
  }
}
