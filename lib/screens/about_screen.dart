import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
  class AboutScreen extends StatelessWidget {
    const AboutScreen({super.key});

    Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Tidak dapat membuka URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Portfolio Saya'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Header
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 600),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(0, (1 - value) * 20),
                  child: child,
                ),
              ),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/logo.png'), // ganti dengan gambar logo
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'MyAwesomeApp',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Versi 1.0.0',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Card About
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.info_outline),
                      title: const Text('Tentang Portfolio Saya'),
                      subtitle: const Text(
                        'Portfolio ini dibuat untuk memudahkan pengguna dalam mengelola aktivitas sehari-hari dengan fitur yang intuitif dan tampilan modern.',
                      ),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.person_outline),
                      title: const Text('Pengembang'),
                      subtitle: const Text('Dikembangkan oleh Ibnu Maulana Dwi Putra (@ibnmlndwp)'),
                    ),
                    const Divider(),
                    ListTile(
                      leading: const Icon(Icons.email_outlined),
                      title: const Text('contact person'),
                      subtitle: const Text('ibnumaulanadwip@gmail.com'),
                      onTap: () => _launchUrl('ibnumaulanadwip@gmail.com'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Footer or Credits
            Text(
              '© 2025 MyProject. All rights reserved.',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
