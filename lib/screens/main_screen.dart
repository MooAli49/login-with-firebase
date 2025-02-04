import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_firebase/screens/login_screen.dart';
import 'package:login_firebase/screens/signup_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 184, 27, 54),
              Color.fromARGB(255, 41, 25, 51),
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 9,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                    size: 29,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Icon(
              Icons.fitness_center,
              color: Colors.white,
              size: 54,
            ),
            const Text(
              'FITNESS CLUB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 41,
              ),
            ),
            const Spacer(),
            const Text(
              'Welcome Back',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.white,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text('SIGN IN'),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                textStyle: const TextStyle(
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
              child: const Text('SIGN UP'),
            ),
            const Spacer(),
            const Text(
              'Login With Social Media',
              style: TextStyle(
                color: Colors.white,
                fontSize: 21,
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  SizedBox(width: 9),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                  SizedBox(width: 9),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
