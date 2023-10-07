import 'package:flutter/material.dart';

class CustomBottomNavigationBar1 extends StatelessWidget {
  const CustomBottomNavigationBar1({
    Key? key,
    required int currentIndex,
    required Function(int) onTap,
  })  : _currentIndex = currentIndex,
        _onTap = onTap,
        super(key: key);

  final int _currentIndex;
  final Function(int) _onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_filled),
            label: _currentIndex == 0 ? '●' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.view_cozy_outlined),
            label: _currentIndex == 1 ? '●' : '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.calendar_today_outlined),
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
