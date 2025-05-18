import 'package:flutter/material.dart';
import '../models/project.dart';
import '../widgets/project_item.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Projects")),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F0F1E), Color(0xFF1A1A2E)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            return ProjectItem(project: projects[index]);
          },
        ),
      ),
    );
  }
}
