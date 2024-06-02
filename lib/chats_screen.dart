import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  final List<Map<String, String>> chats = [
    {"name": "Ana", "message": "hola!", "time": "8:32"},
    {"name": "Ines", "message": "siii", "time": "Ayer"},
    {"name": "Alba", "message": "perfecto", "time": "Ayer"},
    {"name": "Jhin", "message": "a que hora?", "time": "Ayer"},
    {"name": "Tomas", "message": "como quieras", "time": "Ayer"},
    {"name": "Laura", "message": "adios", "time": "Ayer"},
  ];

  final List<Map<String, String>> calls = [
    {"name": "Laura", "time": "8:32"},
    {"name": "Sofia", "time": "Ayer"},
    {"name": "Eva", "time": "Ayer"},
    {"name": "Marta", "time": "Ayer"},
    {"name": "Belen", "time": "Ayer"},
    {"name": "Telma", "time": "Ayer"},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          backgroundColor: Colors.lightGreen[100],
          bottom: TabBar(
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'LLAMADAS'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                  title: Text(chat["name"]!),
                  subtitle: Text(chat["message"]!),
                  trailing: Text(chat["time"]!),
                );
              },
            ),
            ListView.builder(
              itemCount: calls.length,
              itemBuilder: (context, index) {
                final call = calls[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                  title: Text(call["name"]!),
                  trailing: Icon(Icons.phone, color: Colors.green),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
