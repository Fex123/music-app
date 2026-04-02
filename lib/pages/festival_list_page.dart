import 'package:flutter/material.dart';
import '../models/festival.dart';
import 'festival_info_page.dart';

class FestivalListPage extends StatelessWidget {
  const FestivalListPage({super.key});

  // FIXED: getter name is now _festivals
List<Festival> get _festivals => [
  Festival(
    name: "Sunrise Music Festival",
    location: "London, UK",
    startDate: DateTime(2026, 7, 12),
    endDate: DateTime(2026, 7, 14),
  ),
  Festival(
    name: "Nightfall Festival",
    location: "Berlin, Germany",
    startDate: DateTime(2026, 8, 3),
    endDate: DateTime(2026, 8, 5),
  ),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Festival List")),
      body: ListView.builder(
        itemCount: _festivals.length, // FIXED
        itemBuilder: (context, index) {
          final festival = _festivals[index]; // FIXED

          return Card(
            child: ListTile(
              title: Text(festival.name),
              subtitle: Text(
                "${festival.location}\n"
                "${_formatDateRange(festival.startDate, festival.endDate)}",
              ),
              isThreeLine: true,
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
