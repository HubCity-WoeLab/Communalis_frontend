import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      "text": "Bonjour monsieur...",
      "time": "17:30",
      "sentByMe": false,
    },
    {
      "text": "Bonjour monsieur...",
      "time": "17:30",
      "sentByMe": true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6fe02), // Fond vert/jaune
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff92a90f),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 28),
          onPressed: () {},
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/gisele2.jpg'),
              radius: 18,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('To', style: TextStyle(color: Colors.black, fontSize: 16)),
                Text('Sadia', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16)),
              ],
            ),
          ],
        ),
        actions: [
          Icon(Icons.videocam, size: 26, color: Colors.black),
          SizedBox(width: 8),
          Icon(Icons.more_vert, size: 26, color: Colors.black),
          SizedBox(width: 10),
        ],
        toolbarHeight: 70,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 28.0, horizontal: 15.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return Align(
                  alignment: msg['sentByMe'] ? Alignment.centerRight : Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 6),
                    child: Column(
                      crossAxisAlignment: msg['sentByMe'] ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(msg['text'],
                              style: TextStyle(color: Colors.black, fontSize: 16)),
                        ),
                        SizedBox(height: 6),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(msg['time'], style: TextStyle(color: Colors.black, fontSize: 12)),
                            SizedBox(width: 5),
                            Icon(Icons.done_all, size: 18, color: Colors.blue), // Double check
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 11.0),
                      hintText: "Ecrire un message...",
                      hintStyle: TextStyle(color: Colors.grey[600]),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                CircleAvatar(
                  backgroundColor: Color(0xff222221),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
