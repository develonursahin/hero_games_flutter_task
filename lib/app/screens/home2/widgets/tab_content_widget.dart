import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home2/home2_view_model.dart';

class TabContentWidget extends StatelessWidget {
  const TabContentWidget({
    Key? key,
    required this.exerciseType,
  }) : super(key: key);

  final String exerciseType;
  @override
  Widget build(BuildContext context) {
    Home2ViewModel viewModel = Home2ViewModel();
    List<WorkOutProgramModel>? programs = [];
    for (var i = 0; i < viewModel.workOutPrograms.length; i++) {
      if (exerciseType == 'All Type') {
        programs = viewModel.workOutPrograms;
      } else if (exerciseType == 'Full Body') {
        if (viewModel.workOutPrograms[i].exerciseType == "Full Body") {
          programs!.add(viewModel.workOutPrograms[i]);
        }
      } else if (exerciseType == 'Upper') {
        if (viewModel.workOutPrograms[i].exerciseType == "Upper") {
          programs?.add(viewModel.workOutPrograms[i]);
        }
      } else if (exerciseType == 'Lower') {
        if (viewModel.workOutPrograms[i].exerciseType == "Lower") {
          programs!.add(viewModel.workOutPrograms[i]);
        }
      }
    }

    return ListView.builder(
      itemCount: programs?.length ?? 0,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 0.2)),
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 0.2)),
                              child: Center(
                                child: Text(
                                  "${programs?[index].day} days",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              programs![index].title!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                viewModel.workOutPrograms[index].description!),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(Icons.access_time_outlined),
                              const SizedBox(width: 5),
                              Text(
                                  "${viewModel.workOutPrograms[index].minute} mins"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        viewModel.workOutPrograms[index].imagePath!,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
