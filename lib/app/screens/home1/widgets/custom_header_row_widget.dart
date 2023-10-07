import 'package:flutter/material.dart';

class CustomHeaderRowWidget extends StatelessWidget {
  const CustomHeaderRowWidget({
    super.key,
    required this.headerText,
  });

  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See more >",
            style: TextStyle(
                color: Colors.green[600],
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ),
      ],
    );
  }
}
