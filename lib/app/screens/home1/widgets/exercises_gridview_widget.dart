import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';

class ExercisesGridViewWidget extends StatelessWidget {
  const ExercisesGridViewWidget({
    super.key,
    required this.viewModel,
    required this.screenWidth,
  });

  final Home1ViewModel viewModel;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.2,
      ),
      itemCount: viewModel.exercies.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final exercise = viewModel.exercies[index];
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
                    SizedBox(child: Image.asset(exercise.exerciseIconPath)),
                    SizedBox(width: screenWidth * 0.02),
                    Text(
                      exercise.exerciseName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.04,
                      ),
                    )
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
