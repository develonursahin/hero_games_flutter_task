import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';

class WelcomeLetterWidget extends StatelessWidget {
  const WelcomeLetterWidget({
    super.key,
    required this.viewModel,
  });

  final Home1ViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              'Hello, ',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Text(
              viewModel.userFullName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            "How are you feeling today ?",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
