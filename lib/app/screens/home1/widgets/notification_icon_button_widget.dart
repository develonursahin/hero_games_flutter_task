import 'package:flutter/material.dart';

class NotificationIconButtonWidget extends StatelessWidget {
  const NotificationIconButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
        ),
        Positioned(
          top: 12,
          right: 12,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
