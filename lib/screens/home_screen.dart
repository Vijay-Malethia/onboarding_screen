import 'package:flutter/material.dart';

import '../widgets/home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/bg3.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 118, 182, 235).withOpacity(0.4),
                  const Color.fromARGB(255, 29, 142, 235).withOpacity(0.9)
                ],
              ),
            ),
          ),
          const SingleChildScrollView(child: Center(child: HomeWidget())),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 15),
        height: 50,
        width: 120,
        child: FloatingActionButton(
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(7))),
          onPressed: () {
            Navigator.of(context).pushNamed('/onboardingScreen');
          },
          child: const Text(
            "Let's Start",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
