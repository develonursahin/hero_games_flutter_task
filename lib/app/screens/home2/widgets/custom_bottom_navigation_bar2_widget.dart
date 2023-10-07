import 'package:flutter/material.dart';

class CustomBottomNavigationBar2 extends StatelessWidget {
  const CustomBottomNavigationBar2({
    super.key,
    required int currentIndex,
    this.onTap,
  }) : _currentIndex = currentIndex;

  final int _currentIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.purple[900],
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: _currentIndex == 0 ? '●' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.near_me_outlined),
            label: _currentIndex == 1 ? '●' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.insert_chart_outlined_outlined),
            label: _currentIndex == 2 ? '●' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outlined),
            label: _currentIndex == 3 ? '●' : '',
          ),
        ],
      ),
    );
  }
}
