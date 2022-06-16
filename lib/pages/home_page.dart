import 'package:flutter/material.dart';
import 'package:project_management_app/widgets/home_appbar.dart';
import 'package:project_management_app/widgets/home_cards.dart';
import 'package:project_management_app/widgets/home_dot_indicator.dart';
import 'package:project_management_app/widgets/details_summary.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 49, 84, 241),
        body: Column(
          children: const [
            HomeAppBar(),
            HomeCards(),
            HomeDotIndicator(),
            SizedBox(height: 10),
            HomeSummary(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Tasks',
              icon: Icon(Icons.task),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: 'Menu',
              icon: Icon(Icons.menu),
            ),
          ],
        ),
      ),
    );
  }
}
