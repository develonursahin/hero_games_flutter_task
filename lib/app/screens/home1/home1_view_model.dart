import 'package:flutter/material.dart';

class Home1ViewModel {
  List<FeelModel> feelings = [
    FeelModel(
        feelName: "Love",
        feelImagePath: "assets/images/love.png",
        isSelected: false),
    FeelModel(
        feelName: "Cool",
        feelImagePath: "assets/images/cool.png",
        isSelected: false),
    FeelModel(
        feelName: "Happy",
        feelImagePath: "assets/images/happy.png",
        isSelected: false),
    FeelModel(
        feelName: "Sad",
        feelImagePath: "assets/images/sad.png",
        isSelected: false),
  ];
  List<ExerciseModel> exercies = [
    ExerciseModel(
        exerciseName: "Relaxation",
        exerciseIconPath: "assets/images/relaxation.png",
        exerciseColor: const Color.fromARGB(35, 197, 174, 233)),
    ExerciseModel(
        exerciseName: "Meditation",
        exerciseIconPath: "assets/images/meditation.png",
        exerciseColor: const Color.fromARGB(35, 233, 174, 204)),
    ExerciseModel(
        exerciseName: "Beathing",
        exerciseIconPath: "assets/images/beathing.png",
        exerciseColor: const Color.fromARGB(35, 233, 203, 174)),
    ExerciseModel(
        exerciseName: "Yoga",
        exerciseIconPath: "assets/images/yoga.png",
        exerciseColor: const Color.fromARGB(35, 174, 211, 233)),
  ];
  String userFullName = "Sara Rose";
  List<FeatureItem> featureItems = [
    FeatureItem(
      title: "Positive vibes",
      description: "Boost your mood with positive vibes",
      imageUrl: "assets/images/dog_walking.png",
      duration: "3 mins",
      color: Colors.greenAccent.shade100.withOpacity(0.3),
      iconColor: Colors.green,
    ),
    FeatureItem(
      title: "Relief session",
      description: "Feel soft in a short time with yoga.",
      imageUrl: "assets/images/do_yoga.png",
      duration: "10 mins",
      color: Colors.blueAccent.shade100.withOpacity(0.3),
      iconColor: Colors.blue,
    ),
    FeatureItem(
      title: "Time to strengthen",
      description: "Come to yourself with exercise.",
      imageUrl: "assets/images/do_exercise.png",
      duration: "8 mins",
      color: Colors.pinkAccent.shade100.withOpacity(0.3),
      iconColor: Colors.pink,
    )
  ];
}

class FeatureItem {
  String title;
  String description;
  String imageUrl;
  String duration;
  Color color;
  Color iconColor;

  FeatureItem(
      {required this.description,
      required this.imageUrl,
      required this.duration,
      required this.title,
      required this.color,
      required this.iconColor});
}

class FeelModel {
  final String feelName;
  final String feelImagePath;
  bool isSelected;

  FeelModel({
    required this.feelName,
    required this.feelImagePath,
    this.isSelected = false,
  });
}

class ExerciseModel {
  String exerciseName;
  String exerciseIconPath;
  Color exerciseColor;
  ExerciseModel(
      {required this.exerciseName,
      required this.exerciseIconPath,
      required this.exerciseColor});
}
