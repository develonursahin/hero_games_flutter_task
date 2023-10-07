import 'package:flutter/material.dart';

class Home2ViewModel {
  UserModel user =
      UserModel(fullName: "Jade", imagePath: "assets/images/profileImage.png");
  List<TabBarModel> tabBars = [
    TabBarModel(tabName: "All Type", icon: Icons.all_inbox),
    TabBarModel(tabName: "Full Body", icon: Icons.width_full),
    TabBarModel(tabName: "Upper", icon: Icons.move_up),
    TabBarModel(tabName: "Lower", icon: Icons.low_priority),
  ];
  List<StatusBarModel> statusBars = [
    StatusBarModel(
        statusName: "Heart Rate",
        icon: Icons.favorite_outline,
        statusValue: 81,
        statusUnit: "BPM"),
    StatusBarModel(
        statusName: "To-do",
        icon: Icons.list,
        statusValue: 32.5,
        statusUnit: "%"),
    StatusBarModel(
        statusName: "Calo",
        icon: Icons.water_drop_outlined,
        statusValue: 1000,
        statusUnit: "Cal"),
  ];
  List<WorkOutProgramModel> workOutPrograms = [
    WorkOutProgramModel(
        title: "Morning Yoga",
        description: "Improve mental focus.",
        imagePath: "assets/images/morning_yoga.png",
        day: 7,
        minute: 30,
        exerciseType: "Full Body"),
    WorkOutProgramModel(
        title: "Plank Exercise",
        description: "Improve posture and stability.",
        imagePath: "assets/images/plank_exercise.png",
        day: 3,
        minute: 30,
        exerciseType: "Upper"),
    WorkOutProgramModel(
        title: "Breath Exercise",
        description: "Improve your breathing control.",
        imagePath: "assets/images/breath_exercise.png",
        day: 3,
        minute: 30,
        exerciseType: "Lower"),
  ];
}

class UserModel {
  String fullName;
  String imagePath;
  UserModel({required this.fullName, required this.imagePath});
}

class StatusBarModel {
  IconData icon;
  String statusName;
  // ignore: prefer_typing_uninitialized_variables
  var statusValue;
  String statusUnit;
  StatusBarModel(
      {required this.icon,
      required this.statusName,
      required this.statusUnit,
      required this.statusValue});
}

class TabBarModel {
  String tabName;
  IconData? icon;
  TabBarModel({required this.tabName, this.icon});
}

class WorkOutProgramModel {
  String? title;
  String? description;
  String? imagePath;
  String? exerciseType;
  int? day;
  int? minute;
  WorkOutProgramModel(
      {this.title,
      this.description,
      this.imagePath,
      this.day,
      this.minute,
      this.exerciseType});
}
