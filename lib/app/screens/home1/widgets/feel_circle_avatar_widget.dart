import 'package:flutter/material.dart';
import 'package:hero_games_flutter_task/app/screens/home1/home1_view_model.dart';
class FeelCircleAvatarWidget extends StatelessWidget {
  const FeelCircleAvatarWidget({
    Key? key,
    required this.viewModel,
    required this.screenWidth,
    required this.selectedFeelIndex,
    required this.onSelectionChanged,
  }) : super(key: key);

  final Home1ViewModel viewModel;
  final double screenWidth;
  final int selectedFeelIndex;
  final Function(int) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: viewModel.feelings.asMap().entries.map((entry) {
        FeelModel feel = entry.value;
        int feelIndex = entry.key;
        return GestureDetector(
          onTap: () {
            if (feelIndex == selectedFeelIndex) {
              // Zaten seçiliyse, iptal etme işlemi
              onSelectionChanged(-1); // -1, hiçbir şeyin seçilmediğini temsil eder
            } else {
              // Başka bir öğe seçildiğinde, yeni öğeyi seçme işlemi
              onSelectionChanged(feelIndex);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor:
                      feelIndex == selectedFeelIndex
                          ? Colors.amber
                          : Colors.black12,
                  radius: screenWidth * 0.08,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(feel.feelImagePath),
                    radius: screenWidth * 0.05,
                  ),
                ),
                Text(feel.feelName)
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
