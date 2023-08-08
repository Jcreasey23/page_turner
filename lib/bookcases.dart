



import 'package:flutter/material.dart';

import 'main.dart';

class BooksPage extends StatelessWidget {
  const BooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Page')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
        },
        child: const Text('Back to Home'),
      )),          
    );
  }
}