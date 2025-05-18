import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF1F1F2E),
      shadowColor: Color(0xFF00FFF7),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            SizedBox(height: 10),
            Text(
              "Ibnu Maulana Dwi Putra",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00FFF7),
                shadows: [Shadow(blurRadius: 10, color: Colors.cyanAccent)],
              ),
            ),
            Text(
              "SARJANA SISTEM INFORMASI",
              style: TextStyle(
                color: Colors.white70,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.link, color: Colors.white),
                  onPressed: () => _launchURL('https://www.instagram.com/Ibnmlndwp_'),
                  tooltip: 'Instagram',
                ),
                IconButton(
                  icon: Icon(Icons.video_library, color: Colors.white),
                  onPressed: () => _launchURL('https://www.youtube.com/channel/@ibnumaulana9837'),
                  tooltip: 'YouTube',
                ),
                IconButton(
                  icon: Icon(Icons.business, color: Colors.white),
                  onPressed: () => _launchURL('https://www.linkedin.com/in/ibnu-maulana-dwi-putra-312485361'),
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: Icon(Icons.code, color: Colors.white),
                  onPressed: () => _launchURL('https://github.com/IbnuKusnandar'),
                  tooltip: 'GitHub',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
