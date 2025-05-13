import 'package:flutter/material.dart';
import '../widgets/profile_card.dart';
import '../screens/project_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Portfolio")),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F0F1E), Color(0xFF1A1A2E)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProfileCard(),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text("View Projects"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
