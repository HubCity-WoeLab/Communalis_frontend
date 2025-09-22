import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
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

  Widget _buildDot(int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // décalage pour que les points s’allument un après l’autre
        double value = (_controller.value * 4 - index).clamp(0.0, 1.0);
        return Opacity(
          opacity: value,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: AppColors.primary,
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
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
              // Indicateur animé (4 points)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) => _buildDot(index)),
              ),
              const SizedBox(height: 40),
              // HubCity en image
              Image.asset(
                'assets/images/hubcity.png',
                width: 400,
                height: 300,
                fit: BoxFit.contain,
              ),
            ],
          ),
          // Flèche en bas à droite
          Padding(
            padding: const EdgeInsets.only(bottom: 30, right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: const Icon(Icons.arrow_forward,
                    color: Colors.white, size: 40),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/role');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
