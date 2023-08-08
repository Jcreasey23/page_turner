// Main File for Book_Metrics_Tracker folder
// Project: Page Turner
// Authored by: Josh Creasey
// 8/3/2023
// Last update: 8/4/2023

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bookcases.dart';
import 'goals.dart';
import 'home.dart';
import 'metrics.dart';
import 'book_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Everything in flutter is a "widget"
  const MyApp({super.key});

  @override
  // every widget has a build function
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Page Turner',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

   // Set the default value of currentIndex to 0
  MyAppState() {
    _currentIndex = 0;
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>(); //watches appstate

    final List<Widget> pages = [
      const HomePage(),
      const BooksPage(),
      const GoalPage(),
      const MetricsPage(),
      const SearchPage(),
    ];

    int currentIndex = appState
        .currentIndex; // Use a variable to keep track of the selected index

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello User! Your current Read Streak is 4'),
            Expanded(child: pages[currentIndex])
          ],
        ),
      ),
      //Bottom Bar Navigation Documentation found here https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 249, 140, 97),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
                backgroundColor: Color.fromARGB(255, 2, 105, 6)),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                label: 'Books',
                backgroundColor: Color.fromARGB(255, 2, 105, 6)),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_box),
                label: 'Goals',
                backgroundColor: Color.fromARGB(255, 2, 105, 6)),
            BottomNavigationBarItem(
                icon: Icon(Icons.trending_up_rounded),
                label: 'Metrics',
                backgroundColor: Color.fromARGB(255, 2, 105, 6)),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Color.fromARGB(255, 2, 105, 6))
          ],
          currentIndex: currentIndex,
        onTap: (int index) {
          context.read<MyAppState>().setCurrentIndex(index);

          // Use Navigator to navigate to the respective page
          switch (index) {
            case 0:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
              break;
            case 1:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => BooksPage()),
              );
              break;
            case 2:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => GoalPage()),
              );
              break;
            case 3:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MetricsPage()),
              );
              break;
            case 4:
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
              break;
          }
        },
      ),   
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your functionality here
      },
      backgroundColor: Colors.blue, // Set the background color as you desire
      elevation: 4.0, // Add elevation to make the button stand out (optional)
      shape: const CircleBorder(),
      mini: true,
      child: const Icon(Icons.person_2_outlined),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );

    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: pair.asPascalCase,
        ),
      ),
    );
  }
}
