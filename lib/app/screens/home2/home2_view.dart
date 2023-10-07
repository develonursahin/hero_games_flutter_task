import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home2/home2_view_model.dart';
import 'package:hero_games_flutter_task/app/screens/home2/widgets/custom_appbar_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home2/widgets/status_bar_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home2/widgets/tab_content_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home2/widgets/workout_programs_text_widget.dart';

class Home2View extends StatefulWidget {
  const Home2View({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Home2ViewState createState() => _Home2ViewState();
}

class _Home2ViewState extends State<Home2View>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Home2ViewModel viewModel = Home2ViewModel();
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomAppBarWidget(viewModel: viewModel),
                  const SizedBox(height: 20),
                  StatusBarWidget(
                      screenWidth: screenWidth, viewModel: viewModel),
                  const SizedBox(height: 20),
                  const WorkoutProgramsTextWidget(),
                ],
              ),
              const SizedBox(height: 15),
              TabBar(
                controller: _tabController,
                dividerColor: Colors.grey.shade100,
                indicatorColor: Colors.purple,
                labelColor: Colors.purple,
                overlayColor: MaterialStatePropertyAll(Colors.purple.shade100),
                tabs: viewModel.tabBars.map((tabBar) {
                  return Tab(
                    icon: screenWidth <= 410 ? Icon(tabBar.icon) : null,
                    text: screenWidth > 410 ? tabBar.tabName : null,
                  );
                }).toList(),
              ),
              Flexible(
                child: TabBarView(
                  controller: _tabController,
                  children: viewModel.tabBars.map((tabBar) {
                    return TabContentWidget(
                      exerciseType: tabBar.tabName,
                    );
                  }).toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
