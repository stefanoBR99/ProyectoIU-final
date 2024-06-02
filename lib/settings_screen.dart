import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  bool isActive = true;

  void _toggleActiveState() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editar Perfil'),
        backgroundColor: Colors.lightGreen[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Nombre de usuario',
                  helperText: 'El nombre de usuario solo puede contener letras, números, guiones bajos y puntos. Si cambias el nombre de usuario, tu enlace de perfil también cambiará.',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'El apodo solo se puede cambiar una vez cada 7 días.',
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Descripción corta',
                  helperText: 'Máximo 80 caracteres.',
                ),
                maxLength: 80,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {

                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                    ),
                    child: Text('Cancelar'),
                  ),
                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                    child: Text('Guardar'),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Estado:',
                    style: TextStyle(fontSize: 16),
                  ),
                  Switch(
                    value: isActive,
                    onChanged: (value) {
                      _toggleActiveState();
                    },
                    activeColor: Colors.lightGreen,
                  ),
                  Text(
                    isActive ? 'Activo' : 'Inactivo',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('Cerrar Sesión'),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text('Borrar Cuenta'),
              ),
              SizedBox(height: 16),
              ExpansionTile(
                title: Text('FAQ'),
                children: <Widget>[
                  ListTile(title: Text('Pregunta frecuente 1')),
                  ListTile(title: Text('Pregunta frecuente 2')),
                  ListTile(title: Text('Pregunta frecuente 3')),
                ],
              ),
              ExpansionTile(
                title: Text('Términos y condiciones'),
                children: <Widget>[
                  ListTile(title: Text('Término 1')),
                  ListTile(title: Text('Término 2')),
                  ListTile(title: Text('Término 3')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
