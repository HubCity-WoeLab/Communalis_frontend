import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPage();
}

class _ConnexionPage extends State<ConnexionPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final buttonWidth = double.infinity;

    return Scaffold(
      backgroundColor: const Color(0xFFAAD013),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Formes décoratives
              Positioned(
                top: 80,
                left: -60,
                child: Transform.rotate(
                  angle: 0.2,
                  child: Container(
                    width: 300,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEF443),
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 50,
                right: -70,
                child: Transform.rotate(
                  angle: -0.25,
                  child: Container(
                    width: 300,
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCED812),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                ),
              ),

              // Contenu principal
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, size: 32),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/accueil');
                        },
                      ),
                      const Expanded(
                        child: Center(
                          child: Text(
                            "Connexion",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 48),
                    ],
                  ),
                  const SizedBox(height: 48),

                  // Champ email
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900],
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Champ mot de passe
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900],
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    obscureText: _obscurePassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscurePassword ? Icons.visibility_off : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscurePassword = !_obscurePassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Bouton login
                  SizedBox(
                    width: buttonWidth,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      onPressed: () {
                        // Action du bouton Login
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Lien inscription
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: Colors.black, fontSize: 15),
                        children: [
                          const TextSpan(text: "Pas de compte, "),
                          TextSpan(
                            text: "S'inscrire",
                            style: const TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Redirection à l\'inscription')),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),

                  // Bouton suivant (OTP)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      backgroundColor: Colors.grey[900],
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/codeOTP');
                      },
                      child: const Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
