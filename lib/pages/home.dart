import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_doctor_project/pages/Doctors.dart';
import 'package:flutter_doctor_project/pages/appointment.dart';
import 'package:flutter_doctor_project/pages/profile.dart';
import 'package:flutter_doctor_project/widget/categor1.dart';
import 'package:flutter_doctor_project/widget/category2.dart';
import 'package:flutter_doctor_project/widget/category_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const Doctors(),
    const appointment(),
    const Profile(),
  ];

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE6EFF9),
        body: _pages[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          onTap: onPageChanged,
          items: const [
            Icon(Icons.home, size: 30
            ),
            Icon(Icons.people, size: 30),
            Icon(Icons.assignment, size: 30),
            Icon(Icons.person, size: 30),
          ],
          color: Colors.lightBlue,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: const ListTile(
                      title: Text(
                        'Find Your',
                        style: TextStyle(fontSize: 25),
                      ),
                      subtitle: Text(
                        'Specialist',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chat_bubble_outline,
                    size: 30,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 230,
              child: CategoryHome(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Categories            ',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 140,
              child: Categor1(),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Available Doctors    ',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                ),
                Text(
                  '  See All',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 250,
              child: Category2(),
            ),
          ],
        ),
      ),
    );
  }
}
