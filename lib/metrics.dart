import 'package:flutter/material.dart';

import 'main.dart';

class MetricsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Metrics Page')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Text('Back to Home'),
      )),
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
            backgroundColor: const Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Goals',
            backgroundColor: const Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: const Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_rounded),
            label: 'Metrics',
            backgroundColor: const Color.fromARGB(255, 2, 105, 6)),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: const Color.fromARGB(255, 2, 105, 6))
      ]),
    );
  }
}