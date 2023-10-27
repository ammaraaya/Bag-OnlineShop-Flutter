import 'package:flutter/material.dart';

import 'home.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'images/Shopz.png',
                  width: 600,
            ),
          ),
          
          const SizedBox(height: 24),

          //Sub Title
          const Text(
            'Thousands of Quality Products for You',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 48),

          //Button
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),)),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 75, 75),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(25),
              child: const Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          )
          ],
        ),
      ),
    ),
    );
  }
}