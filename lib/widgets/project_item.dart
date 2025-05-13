import 'package:flutter/material.dart';
import '../models/project.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  ProjectItem({required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF2C2C3E),
      shadowColor: Color(0xFF00FFF7),
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: Image.asset(project.imageUrl, width: 50, height: 50),
        title: Text(
          project.title,
          style: TextStyle(color: Color(0xFF00FFF7), fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          project.description,
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }
}
