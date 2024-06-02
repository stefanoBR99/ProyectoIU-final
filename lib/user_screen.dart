import 'package:flutter/material.dart';
import 'friends_screen.dart';
import 'search_screen.dart';
import 'chats_screen.dart';
import 'settings_screen.dart';

class userScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil de Usuario'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.lightGreen[100],
              height: 200,
              child: Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Stefano Beltrami',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Soy un chico de 25 años que estudia en Madrid y tengo un perro, en mis ratos libres me gusta pasear con Max por el retiro y jugar a la pelota con el',
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.info),
                          SizedBox(width: 8),
                          Text('Disponible'),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(width: 8),
                          Text('Malasaña, Madrid'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(6, (index) {
                      return Container(
                        margin: EdgeInsets.all(4.0),
                        color: Colors.grey[300],
                        height: 150,
                        width: 150,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                          size: 50,
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.group),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FriendsScreen()),
                          );
                        },
                      ),
                      SizedBox(height: 8),
                      Text('Amigos'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchScreen()),
                          );
                        },
                      ),
                      SizedBox(height: 8),
                      Text('Buscar'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.message),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatsScreen()),
                          );
                        },
                      ),
                      SizedBox(height: 8),
                      Text('Mensajes'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SettingsScreen()),
                          );
                        },
                      ),
                      SizedBox(height: 8),
                      Text('Ajustes'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
