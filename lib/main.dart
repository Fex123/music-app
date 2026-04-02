import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});
  @override
  Widget build(BuildContext context) => const _BlankPage(title: 'My Profile');
}

class ArtistsPage extends StatelessWidget {
  const ArtistsPage({super.key});
  @override
  Widget build(BuildContext context) => const _BlankPage(title: 'Artists');
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) => const _BlankPage(title: 'Home');
}

class FestivalsPage extends StatelessWidget {
  const FestivalsPage({super.key});
  @override
  Widget build(BuildContext context) => const _BlankPage(title: 'Festivals');
}

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) => const _BlankPage(title: 'Settings');
}
