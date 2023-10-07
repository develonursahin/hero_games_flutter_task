import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/widgets/notification_icon_button_widget.dart';
import 'package:hero_games_flutter_task/app/screens/home2/home2_view_model.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
    required this.viewModel,
  });

  final Home2ViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(viewModel.user.imagePath),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, ${viewModel.user.fullName}",
                  style: const TextStyle(fontSize: 16),
                ),
                const Text(
                  "Ready to workout?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                )
              ],
            )
          ],
        ),
        const Align(
          alignment: Alignment.topRight,
          child: NotificationIconButtonWidget(),
        ),
      ],
    );
  }
}
