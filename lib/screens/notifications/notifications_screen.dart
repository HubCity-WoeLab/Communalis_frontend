import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {

  final List<Map<String, String>> notifications = [
    {
      "title": "Nouvelle note de Francais",
      "subtitle": "disponi..",
      "time": "12:10",
    },
    {
      "title": "Nouvelle note de Francais",
      "subtitle": "disponi..",
      "time": "12:10",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6fe02), // Couleur vive similaire à l'image
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff92a90f), // Couleur olive
        centerTitle: true,
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
        toolbarHeight: 80,
        // Les icônes (réseau, batterie, etc.) sont automatiques sur mobile
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 32.0),
        child: Column(
          children: notifications.map((notif) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18.0),
              child: Card(
                color: Colors.white,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.campaign, color: Colors.black, size: 22),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notif["title"]!,
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                            Text(
                              notif["subtitle"]!,
                              style: TextStyle(color: Colors.grey[700], fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        notif["time"]!,
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
