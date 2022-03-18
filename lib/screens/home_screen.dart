import 'package:bubblefit_home/model/theme_model.dart';
import 'package:bubblefit_home/tabs/tab_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Provider.of<ThemeModel>(context, listen: false).toogleTheme();
            },
            icon: Icon(
              Icons.toggle_on,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Theme.of(context).colorScheme.onPrimary,
        ),
        child: BottomNavigationBar(
          currentIndex: _page,
          onTap: (p) {
            _pageController.animateToPage(
              p,
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          selectedItemColor: Theme.of(context).textTheme.bodyText1!.color,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fitness_center,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
                label: 'Workouts'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.graphic_eq,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
                label: 'Métricas'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                ),
                label: 'Configurações'),
          ],
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (p) {
            setState(() {
              _page = p;
            });
          },
          children: [
            TabHome(size: size),
            Container(color: Colors.amber),
            Container(color: Colors.blueAccent),
            Container(color: Colors.pinkAccent),
          ],
        ),
      ),
    );
  }
}
