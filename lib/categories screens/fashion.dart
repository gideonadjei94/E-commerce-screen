import 'package:flutter/material.dart';

class Fashion extends StatelessWidget {
  const Fashion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fashion',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
      ),
    );
  }
}