import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: const Icon(
                  Icons.sports_esports,
                  size: 180,
                  color: Colors.deepPurpleAccent,
                ),
              ),
          
              const SizedBox(height: 48),
          
              // title
              const Text(
                'GameZone',
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
          
              const SizedBox(height: 24),
          
              // sub title
              const Text(
                'Encuentra videojuegos para todos los gustos',
                style:  TextStyle(
                  fontSize: 16,
                  color:Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48),

              //start now button
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Explorar juegos',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}