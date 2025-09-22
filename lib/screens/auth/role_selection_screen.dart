import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<RoleSelectionScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // boucle infinie
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // fond noir
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(), // espace vide en haut
          // Partie centrale (logo + indicateur + hubcity)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Communalis
              Image.asset(
                'assets/images/logoCommunalis.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 30),

              // Zone de sélection Formateur / Parent
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    const Text(
                      "Voulez-vous vous inscrire sur la plateforme en tant que:",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/inscription-formateur');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFAAD013),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Formateur",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/inscription-parent');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFAAD013),
                            foregroundColor: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Parent",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // HubCity en image
              Image.asset(
                'assets/images/hubcity.png',
                width: 400,
                height: 300,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
