import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'result_screen.dart';  // Importa la pantalla de resultados

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController petsController = TextEditingController();
  final TextEditingController walksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Cuidadores de Perros'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Dibujar tu búsqueda en España',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                height: 400,
                child: Image.asset(
                  'assets/mad.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  labelText: 'Fecha',
                  hintText: 'Selecciona la fecha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                onTap: () async {
                  FocusScope.of(context).requestFocus(new FocusNode());
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    dateController.text =
                    "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                  }
                },
              ),
              SizedBox(height: 16),
              TextField(
                controller: petsController,
                decoration: InputDecoration(
                  labelText: 'Otras Mascotas',
                  hintText: 'Ingrese otras mascotas',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.pets),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: walksController,
                decoration: InputDecoration(
                  labelText: 'Paseos Diarios',
                  hintText: 'Número de paseos diarios',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  suffixIcon: Icon(Icons.directions_walk),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                      msg: "Buscando cuidadores...",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResultScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(vertical: 18.5),
                    textStyle: TextStyle(fontSize: 14),
                  ),
                  child: Text('Ver los cuidadores disponibles'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
