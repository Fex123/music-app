import 'package:flutter/material.dart';
import 'festival_list_page.dart';

class FestivalsPage extends StatelessWidget {
  const FestivalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Festivals"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _sectionHeader("Festivals"),
          _sectionCard(
            title: "Festival List",
            description: "Browse all festivals.",
            icon: Icons.list_alt,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const FestivalListPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title) => Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      );

  Widget _sectionCard({
    required String title,
    required String description,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icon, size: 32),
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}
