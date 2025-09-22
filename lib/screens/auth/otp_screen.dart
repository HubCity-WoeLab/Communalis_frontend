import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OtpValidationScreen extends StatelessWidget {
  const OtpValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent, // fond jaune
      body: SafeArea(
        child: Column(
          children: [
            // Header avec bouton retour
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              color: Color(0xFF7B910A),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                  const Text(
                    "Validation OTP",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // Texte instruction
            const Text(
              "Veuillez entrer le code que vous avez reçu",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // Champs OTP (5 cases)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  width: 45,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            // Texte "Code non reçu"
            Center(
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  children: [
                    const TextSpan(text: "Code non reçu ? "),
                    TextSpan(
                      text: "Renvoyer",
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Nouveau code envoyé !")),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Bouton Validation
            ElevatedButton(
              onPressed: () {
                // Action de validation
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 60, vertical: 14),
              ),
              child: const Text(
                "Validation",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            const Spacer(),

            // Bouton flèche en bas
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    //  Navigation vers l’écran suivant
                  },
                  child: const Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
