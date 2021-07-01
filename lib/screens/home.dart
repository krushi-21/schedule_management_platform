import 'package:flutter/material.dart';
import 'package:schedule_management_platform/res/appassets.dart';
import 'package:schedule_management_platform/res/appcolors.dart';

import 'homescreen.dart';
import 'schedule.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  int currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController(initialPage: currentIndex);
    super.initState();
  }

  List<Widget> tabPages = [
    HomeScreen(),
    Schedule(),
  ];

  void onPageChanged(int page) {
    setState(() {
      this.currentIndex = page;
    });
  }

  void tabTapped(int index) {
    setState(() {
      this._pageController.animateToPage(index,
          duration: const Duration(milliseconds: 200), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavbar(),
      body: PageView(
        children: tabPages,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

//bottom navbar
  BottomNavigationBar bottomNavbar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.homeImage),
            size: 24,
          ),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.calenderImage),
            size: 24,
          ),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.chatImage),
            size: 24,
          ),
          label: '.',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage(AppAssets.contactImage),
            size: 24,
          ),
          label: '.',
        ),
      ],
      currentIndex: currentIndex,
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      selectedItemColor: AppColors.card1Color,
      onTap: tabTapped,
    );
  }
}
