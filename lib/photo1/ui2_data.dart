
import 'package:flutter/material.dart';

class UI2Data {
  final Color bgColor;
  final Color circleColor1;
  final Color circleColor2;
  final String name;
  final String title;
  final int courseNumber;
  final String description;
  final List<String> topics;

  UI2Data({
    required this.bgColor,
    required this.circleColor1,
    required this.circleColor2,
    required this.name,
    required this.title,
    required this.courseNumber,
    required this.description,
    required this.topics,
  });
}

final list = [
  (Colors.orange, Colors.white, "Data Scientist"),
  (Colors.red, Colors.white, "Software Engineer"),
  (Colors.purple, Colors.white, "Product Manager"),
  (Colors.cyan, Colors.white, "UI/UX Designer"),
];
 final List<UI2Data> dataList = <UI2Data>[
  UI2Data(
    bgColor: Colors.purple,
    circleColor1: Colors.pink,
    circleColor2: Colors.orange,

    name: "Data Science",
    title: "John Hopkins University",
    courseNumber: 17,
    description:
    "Data Science is a field that uses scientific methods, processes, algorithms and systems to extract knowledge and insights from structured and unstructured data.",
    topics: ["Data Science", "Machine Learning"],
  ),
  UI2Data(
    bgColor: Colors.red,
    circleColor1: Colors.yellow,
    circleColor2: Colors.green,
    name: "Artificial Intelligence",
    title: "Stanford University",
    courseNumber: 101,
    description:
    "Artificial Intelligence involves the development of algorithms and software to perform tasks that normally require human intelligence.",
    topics: ["AI", "Deep Learning"],
  ),
  UI2Data(
    bgColor: Colors.orange,
    circleColor1: Colors.blue,
    circleColor2: Colors.white,
    name: "Cyber Security",
    title: "Massachusetts Institute of Technology",
    courseNumber: 45,
    description: "Cyber Security focuses on protecting systems, networks, and data from digital attacks.",
    topics: ["Cyber Security", "Network Security"],
  ),
];
