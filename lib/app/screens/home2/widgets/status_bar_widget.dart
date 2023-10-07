import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home2/home2_view_model.dart';

class StatusBarWidget extends StatelessWidget {
  const StatusBarWidget({
    super.key,
    required this.screenWidth,
    required this.viewModel,
  });

  final double screenWidth;
  final Home2ViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: screenWidth / 7),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmallScreen = screenWidth <= 380;
          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: viewModel.statusBars.length,
            itemBuilder: (context, index) {
              var statusBar = viewModel.statusBars[index];
              return Container(
                width: screenWidth * 0.3,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      isSmallScreen
                          ? Column(
                              children: [
                                Icon(
                                  statusBar.icon,
                                  color: Colors.purple,
                                  size: 20,
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  statusBar.statusName,
                                  style: TextStyle(
                                    fontSize: screenWidth <= 490 ? 14 : 18,
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              children: [
                                Icon(
                                  statusBar.icon,
                                  color: Colors.purple,
                                  size: 20,
                                ),
                                const SizedBox(width: 5),
                                Text(
                                  statusBar.statusName,
                                  style: TextStyle(
                                    fontSize: screenWidth <= 490 ? 14 : 18,
                                  ),
                                ),
                              ],
                            ),
                      Row(
                        children: [
                          Text(
                            "${statusBar.statusValue}",
                            style: TextStyle(
                              fontSize: screenWidth <= 510 ? 20 : 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            statusBar.statusUnit,
                            style: TextStyle(
                              fontSize: screenWidth <= 510 ? 16 : 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 1,
                  height: 20,
                  color: Colors.grey.shade300,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
