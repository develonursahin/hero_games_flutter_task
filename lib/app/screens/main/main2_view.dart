import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/empty/empty_view.dart';
import 'package:hero_games_flutter_task/app/screens/home2/home2_view.dart';
import 'package:hero_games_flutter_task/app/screens/home2/widgets/custom_bottom_navigation_bar2_widget.dart';

class Main2View extends StatefulWidget {
  const Main2View({super.key});

  @override
  State<Main2View> createState() => _Main2ViewState();
}

int currentIndex = 0;
final PageController pageController = PageController();

class _Main2ViewState extends State<Main2View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          Home2View(),
          RoadMapPage(),
          StatusPage(),
          ProfilePage(),
        ],
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar2(
        currentIndex: currentIndex,
        onTap: (index) {
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
