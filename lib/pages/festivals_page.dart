import 'package:flutter/material.dart';
import '../models/festival.dart';
import 'festival_info_page.dart';

class FestivalsPage extends StatelessWidget {
  const FestivalsPage({super.key});

  List<Festival> get _festivals => [
        Festival(
          name: "Tomorrowland",
          location: "Boom, Belgium",
          startDate: DateTime(2026, 7, 18),
          endDate: DateTime(2026, 7, 20),
          description: "One of the biggest EDM festivals in the world.",
          image: "assets/festivals/tomorrowland.jpg",
          genres: ["EDM", "Electronic"],
        ),
        Festival(
          name: "Ultra Music Festival",
          location: "Miami, USA",
          startDate: DateTime(2026, 3, 27),
          endDate: DateTime(2026, 3, 29),
          description: "Iconic Miami electronic music festival.",
          image: "assets/festivals/ultra_miami.jpg",
          genres: ["EDM", "House", "Trance"],
        ),
        Festival(
          name: "Electric Daisy Carnival (EDC)",
          location: "Las Vegas, USA",
          startDate: DateTime(2026, 5, 16),
          endDate: DateTime(2026, 5, 18),
          description: "Massive Las Vegas rave under the lights.",
          image: "assets/festivals/edc_vegas.jpg",
          genres: ["EDM", "Bass", "Trance"],
        ),
        Festival(
          name: "Creamfields",
          location: "UK",
          startDate: DateTime(2026, 8, 22),
          endDate: DateTime(2026, 8, 25),
          description: "Legendary UK dance music festival.",
          image: "assets/festivals/creamfields.jpg",
          genres: ["EDM", "House", "Techno"],
        ),
        Festival(
          name: "UNTOLD Festival",
          location: "Romania",
          startDate: DateTime(2026, 8, 1),
          endDate: DateTime(2026, 8, 4),
          description: "Huge festival in Cluj-Napoca, Romania.",
          image: "assets/festivals/untold.jpg",
          genres: ["EDM", "Pop", "Live"],
        ),
        Festival(
          name: "Mysteryland",
          location: "Netherlands",
          startDate: DateTime(2026, 8, 23),
          endDate: DateTime(2026, 8, 25),
          description: "Historic Dutch electronic music festival.",
          image: "assets/festivals/mysteryland.jpg",
          genres: ["EDM", "Techno", "House"],
        ),
        Festival(
          name: "Parookaville",
          location: "Germany",
          startDate: DateTime(2026, 7, 19),
          endDate: DateTime(2026, 7, 21),
          description: "A fictional city built for festival lovers.",
          image: "assets/festivals/parookaville.jpg",
          genres: ["EDM", "Hardstyle", "House"],
        ),
        Festival(
          name: "Sunburn Festival",
          location: "India",
          startDate: DateTime(2026, 12, 27),
          endDate: DateTime(2026, 12, 29),
          description: "Asia’s biggest electronic music festival.",
          image: "assets/festivals/sunburn.jpg",
          genres: ["EDM", "Bollywood", "House"],
        ),
        Festival(
          name: "ZoukOut",
          location: "Singapore",
          startDate: DateTime(2026, 12, 6),
          endDate: DateTime(2026, 12, 7),
          description: "Beach festival by the famous Zouk club.",
          image: "assets/festivals/zoukout.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Amsterdam Dance Event (ADE)",
          location: "Netherlands",
          startDate: DateTime(2026, 10, 16),
          endDate: DateTime(2026, 10, 20),
          description: "Conference and festival across Amsterdam.",
          image: "assets/festivals/ade.jpg",
          genres: ["EDM", "Techno", "House"],
        ),
        Festival(
          name: "Awakenings Festival",
          location: "Netherlands",
          startDate: DateTime(2026, 6, 28),
          endDate: DateTime(2026, 6, 29),
          description: "Techno-focused festival near Amsterdam.",
          image: "assets/festivals/awakenings.jpg",
          genres: ["Techno"],
        ),
        Festival(
          name: "Airbeat One",
          location: "Germany",
          startDate: DateTime(2026, 7, 10),
          endDate: DateTime(2026, 7, 13),
          description: "German festival with huge stages.",
          image: "assets/festivals/airbeat_one.jpg",
          genres: ["EDM", "Hardstyle"],
        ),
        Festival(
          name: "Nature One",
          location: "Germany",
          startDate: DateTime(2026, 8, 2),
          endDate: DateTime(2026, 8, 4),
          description: "Open-air festival on a former missile base.",
          image: "assets/festivals/nature_one.jpg",
          genres: ["Trance", "Techno", "EDM"],
        ),
        Festival(
          name: "Medusa Festival",
          location: "Spain",
          startDate: DateTime(2026, 8, 7),
          endDate: DateTime(2026, 8, 12),
          description: "Spanish beachside electronic festival.",
          image: "assets/festivals/medusa.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Sónar Festival",
          location: "Spain",
          startDate: DateTime(2026, 6, 19),
          endDate: DateTime(2026, 6, 21),
          description: "Cutting-edge music, creativity and technology.",
          image: "assets/festivals/sonar.jpg",
          genres: ["Electronic", "Experimental"],
        ),
        Festival(
          name: "Les Plages Électroniques",
          location: "France",
          startDate: DateTime(2026, 8, 9),
          endDate: DateTime(2026, 8, 11),
          description: "Beach festival in Cannes, France.",
          image: "assets/festivals/les_plages.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Nuits Sonores",
          location: "France",
          startDate: DateTime(2026, 5, 28),
          endDate: DateTime(2026, 6, 2),
          description: "Urban electronic festival in Lyon.",
          image: "assets/festivals/nuits_sonores.jpg",
          genres: ["Electronic", "Techno"],
        ),
        Festival(
          name: "Neversea",
          location: "Romania",
          startDate: DateTime(2026, 7, 4),
          endDate: DateTime(2026, 7, 7),
          description: "Beach festival on the Black Sea coast.",
          image: "assets/festivals/neversea.jpg",
          genres: ["EDM", "Pop"],
        ),
        Festival(
          name: "Balaton Sound",
          location: "Hungary",
          startDate: DateTime(2026, 7, 3),
          endDate: DateTime(2026, 7, 6),
          description: "Lake Balaton beach festival.",
          image: "assets/festivals/balaton_sound.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Exit Festival",
          location: "Serbia",
          startDate: DateTime(2026, 7, 10),
          endDate: DateTime(2026, 7, 14),
          description: "Fortress-based festival in Novi Sad.",
          image: "assets/festivals/exit.jpg",
          genres: ["Rock", "EDM", "Techno"],
        ),
        Festival(
          name: "We Are FSTVL",
          location: "UK",
          startDate: DateTime(2026, 5, 24),
          endDate: DateTime(2026, 5, 26),
          description: "UK dance festival with huge lineups.",
          image: "assets/festivals/we_are_fstvl.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Parklife Festival",
          location: "UK",
          startDate: DateTime(2026, 6, 8),
          endDate: DateTime(2026, 6, 9),
          description: "Manchester festival with mixed genres.",
          image: "assets/festivals/parklife.jpg",
          genres: ["Electronic", "Hip-Hop", "Pop"],
        ),
        Festival(
          name: "Southport Weekender",
          location: "UK",
          startDate: DateTime(2026, 5, 10),
          endDate: DateTime(2026, 5, 12),
          description: "Soul, house and dance weekender.",
          image: "assets/festivals/southport_weekender.jpg",
          genres: ["House", "Soul"],
        ),
        Festival(
          name: "Electric Forest",
          location: "USA",
          startDate: DateTime(2026, 6, 20),
          endDate: DateTime(2026, 6, 23),
          description: "Forest festival with immersive production.",
          image: "assets/festivals/electric_forest.jpg",
          genres: ["Jam", "EDM"],
        ),
        Festival(
          name: "Lost Lands",
          location: "USA",
          startDate: DateTime(2026, 9, 27),
          endDate: DateTime(2026, 9, 29),
          description: "Bass-heavy dinosaur-themed festival.",
          image: "assets/festivals/lost_lands.jpg",
          genres: ["Dubstep", "Bass"],
        ),
        Festival(
          name: "Beyond Wonderland",
          location: "USA",
          startDate: DateTime(2026, 3, 20),
          endDate: DateTime(2026, 3, 22),
          description: "Wonderland-themed Insomniac festival.",
          image: "assets/festivals/beyond_wonderland.jpg",
          genres: ["EDM", "Trance"],
        ),
        Festival(
          name: "Hard Summer",
          location: "USA",
          startDate: DateTime(2026, 8, 3),
          endDate: DateTime(2026, 8, 4),
          description: "Bass and hip-hop leaning festival.",
          image: "assets/festivals/hard_summer.jpg",
          genres: ["Bass", "Hip-Hop", "EDM"],
        ),
        Festival(
          name: "Okeechobee Music Festival",
          location: "USA",
          startDate: DateTime(2026, 3, 6),
          endDate: DateTime(2026, 3, 9),
          description: "Multi-genre camping festival in Florida.",
          image: "assets/festivals/okeechobee.jpg",
          genres: ["Rock", "EDM", "Jam"],
        ),
        Festival(
          name: "ÎleSoniq Festival",
          location: "Canada",
          startDate: DateTime(2026, 8, 9),
          endDate: DateTime(2026, 8, 11),
          description: "Montreal electronic music festival.",
          image: "assets/festivals/ilesoniq.jpg",
          genres: ["EDM", "Bass"],
        ),
        Festival(
          name: "Veld Festival",
          location: "Canada",
          startDate: DateTime(2026, 8, 3),
          endDate: DateTime(2026, 8, 4),
          description: "Toronto-based electronic and hip-hop festival.",
          image: "assets/festivals/veld.jpg",
          genres: ["EDM", "Hip-Hop"],
        ),
        Festival(
          name: "Djakarta Warehouse Project (DWP)",
          location: "Indonesia",
          startDate: DateTime(2026, 12, 13),
          endDate: DateTime(2026, 12, 15),
          description: "Massive EDM festival in Jakarta.",
          image: "assets/festivals/dwp.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "S2O Festival",
          location: "Thailand",
          startDate: DateTime(2026, 4, 13),
          endDate: DateTime(2026, 4, 15),
          description: "Songkran water festival with EDM.",
          image: "assets/festivals/s2o.jpg",
          genres: ["EDM"],
        ),
        Festival(
          name: "Ultra Australia",
          location: "Australia",
          startDate: DateTime(2026, 2, 22),
          endDate: DateTime(2026, 2, 23),
          description: "Australian edition of Ultra.",
          image: "assets/festivals/ultra_australia.jpg",
          genres: ["EDM", "House"],
        ),
        Festival(
          name: "Listen Out",
          location: "Australia",
          startDate: DateTime(2026, 9, 27),
          endDate: DateTime(2026, 10, 5),
          description: "Touring Australian festival.",
          image: "assets/festivals/listen_out.jpg",
          genres: ["Electronic", "Hip-Hop"],
        ),
        Festival(
          name: "Field Day (Sydney)",
          location: "Australia",
          startDate: DateTime(2026, 1, 1),
          endDate: DateTime(2026, 1, 1),
          description: "New Year’s Day festival in Sydney.",
          image: "assets/festivals/field_day.jpg",
          genres: ["Electronic", "Hip-Hop"],
        ),
        Festival(
          name: "UNTOLD Dubai",
          location: "UAE",
          startDate: DateTime(2026, 2, 15),
          endDate: DateTime(2026, 2, 18),
          description: "Middle East edition of UNTOLD.",
          image: "assets/festivals/untold_dubai.jpg",
          genres: ["EDM", "Pop"],
        ),
        Festival(
          name: "MDLBEAST Soundstorm",
          location: "Saudi Arabia",
          startDate: DateTime(2026, 12, 12),
          endDate: DateTime(2026, 12, 14),
          description: "Huge Saudi Arabian EDM festival.",
          image: "assets/festivals/mdlbeast_soundstorm.jpg",
          genres: ["EDM", "Techno"],
        ),
        Festival(
          name: "Ultra South Africa",
          location: "South Africa",
          startDate: DateTime(2026, 3, 1),
          endDate: DateTime(2026, 3, 2),
          description: "South African edition of Ultra.",
          image: "assets/festivals/ultra_south_africa.jpg",
          genres: ["EDM", "House"],
        ),
      ];

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Festivals"),
      elevation: 0,
    ),
    body: ListView(
      padding: const EdgeInsets.all(16),
      children: [

        // ---------------------------------------------------------
        // INSTAGRAM-STYLE STORY BUBBLES
        // ---------------------------------------------------------
        SizedBox(
          height: 110,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                for (final f in _festivals)
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: _storyBubble(
                      label: f.name,
                      image: f.image,
                      startDate: f.startDate,   // <-- IMPORTANT
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => FestivalInfoPage(festival: f),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),

        const SizedBox(height: 28),

        // ---------------------------------------------------------
        // SECTION HEADER — FESTIVAL NEWS
        // ---------------------------------------------------------
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(
            "Festival News",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
          ),
        ),

        const SizedBox(height: 12),

        _newsCard(title: "New stage designs announced", date: "2 days ago"),
        _newsCard(title: "Massive B2B sets teased", date: "1 week ago"),
        _newsCard(
            title: "Global festival safety upgrades", date: "3 weeks ago"),

        const SizedBox(height: 32),

        // ---------------------------------------------------------
        // SECTION HEADER — ALL FESTIVALS
        // ---------------------------------------------------------
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child: Text(
            "All Festivals",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
          ),
        ),

        const SizedBox(height: 12),

        ..._festivals.map((f) {
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: 1,
            child: _festivalListCard(context, f),
          );
        }),
      ],
    ),
  );
}

// ---------------------------------------------------------
// COUNTDOWN HELPER — NOW CALCULATES NEXT YEAR IF PASSED
// ---------------------------------------------------------
String countdownTo(DateTime date) {
  final now = DateTime.now();

  // If the festival already happened this year → shift to next year
  if (date.isBefore(now)) {
    date = DateTime(date.year + 1, date.month, date.day);
  }

  final diff = date.difference(now);

  if (diff.inDays > 0) return '${diff.inDays}d';
  if (diff.inHours > 0) return '${diff.inHours}h';
  if (diff.inMinutes > 0) return '${diff.inMinutes}m';

  return 'Now';
}

// ---------------------------------------------------------
// INSTAGRAM-STYLE STORY BUBBLE WITH COUNTDOWN BADGE
// ---------------------------------------------------------
Widget _storyBubble({
  required String label,
  required String image,
  required DateTime startDate,
  VoidCallback? onTap,
}) {
  final countdown = countdownTo(startDate);

  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Gradient ring
            Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF5F6D),
                    Color(0xFFFFC371),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            // Countdown badge
            Positioned(
              bottom: 4,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  countdown,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 6),

        SizedBox(
          width: 70,
          child: Text(
            label,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
  );
}

// ---------------------------------------------------------
// NEWS CARD (POLISHED)
// ---------------------------------------------------------
Widget _newsCard({required String title, required String date}) {
  return Card(
    elevation: 2,
    shadowColor: Colors.black12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      leading: const Icon(Icons.newspaper, size: 32),
      title: Text(title),
      subtitle: Text(date),
    ),
  );
}

// ---------------------------------------------------------
// FESTIVAL LIST CARD (POLISHED)
// ---------------------------------------------------------
Widget _festivalListCard(BuildContext context, Festival festival) {
  return Card(
    elevation: 2,
    shadowColor: Colors.black12,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    margin: const EdgeInsets.only(bottom: 12),
    child: ListTile(
      leading: const Icon(Icons.festival, size: 32),
      title: Text(festival.name),
      subtitle: Text(festival.location),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => FestivalInfoPage(festival: festival),
        ),
      ),
    ),
  );
}
}
