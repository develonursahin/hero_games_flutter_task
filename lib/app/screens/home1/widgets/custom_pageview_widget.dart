import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';

class CustomPageViewWidget extends StatelessWidget {
  const CustomPageViewWidget({
    super.key,
    required this.screenWidth,
    required PageController pageController,
    required this.viewModel,
    this.onPageChanged,
  }) : _pageController = pageController;

  final double screenWidth;
  final PageController _pageController;
  final Home1ViewModel viewModel;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenWidth * 0.55,
      child: PageView.builder(
        controller: _pageController,
        itemCount: viewModel.featureItems.length,
        onPageChanged: onPageChanged,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: viewModel.featureItems[index].color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              viewModel.featureItems[index].title,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              viewModel.featureItems[index].description,
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.play_circle_fill,
                                    color:
                                        viewModel.featureItems[index].iconColor,
                                    size: screenWidth * 0.07,
                                  ),
                                ),
                                Text(
                                  viewModel.featureItems[index].duration,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          viewModel.featureItems[index].imageUrl,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}

class PageViewDotWidget extends StatelessWidget {
  const PageViewDotWidget({
    super.key,
    required this.viewModel,
    required this.screenWidth,
    required int currentPage,
  }) : _currentPage = currentPage;

  final Home1ViewModel viewModel;
  final double screenWidth;
  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        viewModel.featureItems.length,
        (int index) {
          return Container(
            width: screenWidth * 0.015,
            height: screenWidth * 0.015,
            margin: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 2.0,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: _currentPage == index ? Colors.grey : Colors.grey.shade300,
            ),
          );
        },
      ),
    );
  }
}
