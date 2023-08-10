



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'book_search.dart';
import 'bookcases.dart';
import 'main.dart';
import 'metrics.dart';

class GoalPage extends StatelessWidget {
  final int currentIndex;
  const GoalPage({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goals Page'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Goal Page Content'),
            // ... Your page content ...
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(
        // ... Customize the local bottom navigation bar ...
        context,
        currentIndex,
        // ... Other properties ...
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context, int currentIndex) {
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
    currentIndex: currentIndex,
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