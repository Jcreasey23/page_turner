import 'package:flutter/material.dart';

import 'main.dart';

class MetricsPage extends StatelessWidget {
  const MetricsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Metrics Page')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
        },
        child: const Text('Back to Home'),
      )),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
            backgroundColor: Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Goals',
            backgroundColor: Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_rounded),
            label: 'Metrics',
            backgroundColor: Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color.fromARGB(255, 2, 105, 6))
      ]),
    );
  }
}