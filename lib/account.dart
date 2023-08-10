// Account Page

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'book_search.dart';
import 'bookcases.dart';
import 'goals.dart';
import 'main.dart';
import 'metrics.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Account Page Content'),
            // ... Your page content ...
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(
        // ... Customize the local bottom navigation bar ...
        context,
        // ... Other properties ...
      ),
    );
  }

  
  
  Widget buildBottomNavigationBar(BuildContext context,) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: const Color.fromARGB(255, 249, 140, 97),
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled),
        label: 'Home',
        backgroundColor: Color.fromARGB(255, 2, 105, 6),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Books',
        backgroundColor: Color.fromARGB(255, 2, 105, 6),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.check_box),
        label: 'Goals',
        backgroundColor: Color.fromARGB(255, 2, 105, 6),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.trending_up_rounded),
        label: 'Metrics',
        backgroundColor: Color.fromARGB(255, 2, 105, 6),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
        backgroundColor: Color.fromARGB(255, 2, 105, 6),
      ),
    ],
    currentIndex: 0,  // Always go back Home
        onTap: (int index) {
          context.read<MyAppState>().setCurrentIndex(index);

          // Use Navigator to navigate to the respective page
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const BooksPage(currentIndex: 1,)),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const GoalPage(currentIndex: 2,)),
              );
              break;
            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MetricsPage(currentIndex: 3,)),
              );
              break;
            case 4:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SearchPage(currentIndex: 4,)),
              );
              break;
          }
    },
  );
  }
}