// This file will contain the basic structure for the search books page
// I hope to use the google books api in order to access titles of books as well as their number of pages, author, and other necessary information
// Project: Page Turner
// Authored by: Josh Creasey
// 8/3/2023
// Last update: 8/4/2023


import 'package:flutter/material.dart';

import 'main.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Page')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MyHomePage()));
        },
        child: const Text('Back to Home'),
      )),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: const Color.fromARGB(255, 2, 105, 6), items: const [
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