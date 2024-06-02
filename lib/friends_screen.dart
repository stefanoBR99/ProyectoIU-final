import 'package:flutter/material.dart';

class FriendsScreen extends StatelessWidget {
  final List<String> friends = [
    "Ana",
    "Jose",
    "Carlos",
    "Irene",
    "Ines",
    "Patricia"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amigos'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: ListView.builder(
        itemCount: friends.length,
        itemBuilder: (context, index) {
          final friend = friends[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, color: Colors.grey),
            ),
            title: Text(friend),
            subtitle: Text('Nombre de usuario'),
            trailing: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Text('Sois amigos'),
            ),
          );
        },
      ),
    );
  }
}
