import 'package:flutter/material.dart';

class Eleve {
  final String nom;
  final String photoPath;
  final int? matricule;

  Eleve({required this.nom, required this.photoPath, this.matricule});
}

class ListeElevesScreen extends StatefulWidget {
  @override
  State<ListeElevesScreen> createState() => _ListeElevesScreenState();
}

class _ListeElevesScreenState extends State<ListeElevesScreen> {
  int selectedIndex = 2; // Mettre l'indice de l'élève sélectionné

  final List<Eleve> eleves = [
    Eleve(nom: "Diallo Gisele", photoPath: "assets/images/gisele.png"),
    Eleve(nom: "Diallo Gisele", photoPath: "assets/images/gisele.png"),
    Eleve(nom: "Diallo Gisele", photoPath: "assets/images/gisele2.png", matricule: 3),
    Eleve(nom: "Diallo Gisele", photoPath: "assets/images/gisele.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6fe02),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff92a90f),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.groups, size: 30, color: Colors.black),
        ),
        title: Text(
          "Liste des eleves",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.arrow_forward, color: Colors.black, size: 30),
          ),
        ],
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: ListView.builder(
          itemCount: eleves.length,
          itemBuilder: (context, index) {
            final eleve = eleves[index];
            final isSelected = selectedIndex == index;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
              child: isSelected
                  ? Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(eleve.photoPath),
                    radius: 22,
                  ),
                  title: Text(
                    "Matricule: ${eleve.matricule}\n${eleve.nom}",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
              )
                  : Card(
                color: Color(0xff92a90f),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 2,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(eleve.photoPath),
                    radius: 22,
                  ),
                  title: Text(
                    eleve.nom,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
