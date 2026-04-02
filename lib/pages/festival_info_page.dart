import 'package:flutter/material.dart';
import '../models/festival.dart';

class FestivalInfoPage extends StatelessWidget {
  final Festival festival;

  const FestivalInfoPage({
    super.key,
    required this.festival,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(festival.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              festival.name,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.location_on),
                const SizedBox(width: 6),
                Text(
                  festival.location,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [
                const Icon(Icons.calendar_month),
                const SizedBox(width: 6),
                Text(
                  _formatDateRange(festival.startDate, festival.endDate),
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 24),

            const Text(
              "About this Festival",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Description coming soon...",
              style: TextStyle(fontSize: 16),
            ),

            const SizedBox(height: 24),

            const Text(
              "Lineup",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Lineup details coming soon...",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDateRange(DateTime start, DateTime end) {
    return "${start.day}/${start.month}/${start.year} - "
        "${end.day}/${end.month}/${end.year}";
  }
}
