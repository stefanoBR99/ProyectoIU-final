import 'package:flutter/material.dart';
import 'convo_screen.dart';  // Importa la pantalla de chat

class ResultScreen extends StatelessWidget {
  final List<Map<String, String>> caretakers = [
    {"title": "Charlie", "location": "moncloa", "description": "Experiencia en cuidado de perros grandes y pequeños."},
    {"title": "Nestor", "location": "peñagrande", "description": "estoy dispuesto a cuidar a tu mascota!."},
    {"title": "Eva", "location": "sol", "description": "Disponibilidad para paseos diarios y cuidados a domicilio."},
    {"title": "Ana", "location": "arguelles", "description": "tengo un perro y nos encanta pasear por el parque del oeste."},
    {"title": "Iñigo", "location": "guzman el bueno", "description": "Paseos diarios y atención personalizada."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultados de búsqueda'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: caretakers.length,
          itemBuilder: (context, index) {
            final caretaker = caretakers[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.person, color: Colors.grey),
                ),
                title: Text(caretaker["title"]!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(caretaker["location"]!),
                    SizedBox(height: 4),
                    Text(caretaker["description"]!),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConvoScreen(
                          caretakerName: caretaker["title"]!,
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text('Contactar'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
