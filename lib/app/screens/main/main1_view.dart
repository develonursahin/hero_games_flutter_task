import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/empty/empty_view.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/custom_bottom_navigation_bar1_widget.dart';

class Main1View extends StatefulWidget {
  const Main1View({super.key});

  @override
  State<Main1View> createState() => _Main1ViewState();
}

int currentIndex = 0;
final PageController pageController = PageController();

class _Main1ViewState extends State<Main1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          Home1View(),
          CategoryPage(),
          CalenderPage(),
          ProfilePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar1(
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
