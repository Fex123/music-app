import 'package:flutter/material.dart';
import '../models/festival.dart';
import 'festival_info_page.dart';

class FestivalListPage extends StatelessWidget {
  const FestivalListPage({super.key});

  // FESTIVAL LIST (now includes all required fields + short descriptions)
  List<Festival> get _festivals => [
        Festival(
          name: "Sunrise Music Festival",
          location: "London, UK",
          startDate: DateTime(2026, 7, 12),
          endDate: DateTime(2026, 7, 14),
          description: "A vibrant summer EDM celebration in central London.",
          image: "assets/festivals/sunrise.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Nightfall Festival",
          location: "Berlin, Germany",
          startDate: DateTime(2026, 8, 3),
          endDate: DateTime(2026, 8, 5),
          description: "Berlin’s signature underground techno and electronic event.",
          image: "assets/festivals/nightfall.jpg",
          genres: ["Techno", "Electronic"],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Festival List")),
      body: ListView.builder(
        itemCount: _festivals.length,
        itemBuilder: (context, index) {
          final festival = _festivals[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.festival, size: 32),
              title: Text(festival.name),
              subtitle: Text(
                "${festival.location}\n"
                "${_formatDateRange(festival.startDate, festival.endDate)}",
              ),
              isThreeLine: true,
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FestivalInfoPage(festival: festival),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  String _formatDateRange(DateTime start, DateTime end) {
    return "${start.day}/${start.month}/${start.year} - "
        "${end.day}/${end.month}/${end.year}";
  }
}
