import 'package:flutter/material.dart';

class ConvoScreen extends StatelessWidget {
  final String caretakerName;

  ConvoScreen({required this.caretakerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat con $caretakerName'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                Text(
                  'chat con: $caretakerName',
                  style: TextStyle(fontSize: 18),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Escribe un mensaje...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
