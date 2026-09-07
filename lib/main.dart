import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/auth/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const JGARMChurchApp());
}

class JGARMChurchApp extends StatelessWidget {
  const JGARMChurchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JGARM CHURCH',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.lightBlue,

        scaffoldBackgroundColor: Colors.white,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Brightness.light,
        ),
      ),

      home: const SplashScreen(),
    );
  }
}

// ============================================================
// SPLASH SCREEN
// ============================================================

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _goToLogin();
  }

  Future<void> _goToLogin() async {
    await Future.delayed(const Duration(seconds: 3));

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.church,
              size: 100,
              color: Colors.lightBlue,
            ),

            SizedBox(height: 20),

            Text(
              'JGARM CHURCH',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              ),
            ),

            SizedBox(height: 8),

            Text(
              'THE FIRE OF THE GOSPEL ABLAZE',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),

            SizedBox(height: 30),

            CircularProgressIndicator(
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}

