import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/custom_header_row_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/custom_pageview_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/exercises_gridview_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/exercises_listview_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/feel_circle_avatar_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/notification_icon_button_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/welcome_letter_widget.dart';

class Home1View extends StatefulWidget {
  const Home1View({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Home1ViewState createState() => _Home1ViewState();
}

class _Home1ViewState extends State<Home1View> {
  final Home1ViewModel viewModel = Home1ViewModel();
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool isSelectedFeel = false;
  int selectedFeelIndex = -1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: NotificationIconButtonWidget(),
                    ),
                    WelcomeLetterWidget(viewModel: viewModel),
                  ],
                ),
                const SizedBox(height: 15),
                FeelCircleAvatarWidget(
                  viewModel: viewModel,
                  screenWidth: screenWidth,
                  selectedFeelIndex: selectedFeelIndex,
                  onSelectionChanged: (int index) {
                    setState(() {
                      selectedFeelIndex = index;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomHeaderRowWidget(
                      headerText: 'Feature',
                    ),
                    CustomPageViewWidget(
                      screenWidth: screenWidth,
                      pageController: _pageController,
                      viewModel: viewModel,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                    ),
                    PageViewDotWidget(
                        viewModel: viewModel,
                        screenWidth: screenWidth,
                        currentPage: _currentPage),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomHeaderRowWidget(
                      headerText: 'Exercise',
                    ),
                    LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        double screenWidth = constraints.maxWidth;
                        if (screenWidth < 300) {
                          return ExercisesListViewWidget(
                              viewModel: viewModel, screenWidth: screenWidth);
                        } else {
                          return ExercisesGridViewWidget(
                              viewModel: viewModel, screenWidth: screenWidth);
                        }
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
