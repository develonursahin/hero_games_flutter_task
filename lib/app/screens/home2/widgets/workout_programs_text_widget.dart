import 'package:flutter/widgets.dart';

class WorkoutProgramsTextWidget extends StatelessWidget {
  const WorkoutProgramsTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Text(
        "Workout Programs",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
