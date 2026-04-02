import 'package:flutter/material.dart';

// IMPORT YOUR REAL FESTIVALS PAGE
import 'pages/festivals_page.dart';

void main() {
  runApp(const LineupLifeApp());
}

class LineupLifeApp extends StatelessWidget {
  const LineupLifeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LineupLife',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const LoginScreen(),
    );
  }
}

// ------------------------------------------------------------
// LOGIN SCREEN
// ------------------------------------------------------------

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _goToMainApp(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainShell()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const FlutterLogo(size: 80),
            const SizedBox(height: 24),
            const Text(
              'Login Screen',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _goToMainApp(context),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

// ------------------------------------------------------------
// MAIN APP SHELL WITH BOTTOM NAVIGATION
// ------------------------------------------------------------

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 2; // Default to Home

  // IMPORTANT: This now uses the REAL FestivalsPage
  final List<Widget> _pages = const [
    MyProfilePage(),
    ArtistsPage(),
    HomePage(),
    FestivalsPage(),   // ← REAL PAGE
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Artists',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.festival),
            label: 'Festivals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

// ------------------------------------------------------------
// BLANK PAGE WIDGETS (KEEP THESE FOR OTHER TABS ONLY)
// ------------------------------------------------------------

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BlankPage(title: 'My Profile');
  }
}

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BlankPage(title: 'Artists');
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BlankPage(title: 'Home');
  }
}

// ❌ REMOVED THE OLD FestivalsPage HERE  
// (It was overriding your real page)

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _BlankPage(title: 'Settings');
  }
}

// ------------------------------------------------------------
// REUSABLE BLANK PAGE
// ------------------------------------------------------------

class _BlankPage extends StatelessWidget {
  final String title;

  const _BlankPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
