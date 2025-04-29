import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro YLD Perfumería',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hintColor: Colors.amberAccent,
        fontFamily: 'Roboto',
      ),
      home: RegistroPerfumeria(),
    );
  }
}

class RegistroPerfumeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro YLD Perfumería'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // Para evitar problemas de overflow si el teclado aparece
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              size: 80.0,
              color: Colors.grey[600],
            ),
            SizedBox(height: 30.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
            SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Teléfono',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Fecha Nac.',
                hintText:
                    'DD/MM/AAAA', // Puedes agregar un formato como sugerencia
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 15.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Dirección',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              maxLines: 2, // Permite varias líneas para la dirección
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para el registro
                Navigator.pushNamed(context, '/pantalla3');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.yellow[600],
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              child: Text('Iniciar'),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home_outlined, color: Colors.grey[400]),
                SizedBox(width: 8.0),
                Text('Volver al inicio',
                    style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
