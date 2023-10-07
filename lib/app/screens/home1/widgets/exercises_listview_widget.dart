import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';

class ExercisesListViewWidget extends StatelessWidget {
  const ExercisesListViewWidget({
    super.key,
    required this.viewModel,
    required this.screenWidth,
  });

  final Home1ViewModel viewModel;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: viewModel.exercies.map((exercise) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: exercise.exerciseColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: Image.asset(exercise.exerciseIconPath),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        exercise.exerciseName,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
