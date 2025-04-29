import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TLD Perfumería',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hintColor: Colors.amberAccent,
        fontFamily: 'Roboto', // Puedes elegir una fuente que te guste
      ),
      home: PerfumeriaInicio(),
    );
  }
}

class PerfumeriaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TLD Perfumería'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Imagen del perfume (puedes usar un AssetImage si la tienes localmente)
            Image.network(
              'https://raw.githubusercontent.com/JToledo19/act2/refs/heads/main/perfumito.png', // Reemplaza con la URL de tu imagen o AssetImage
              height: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Bleu de Chanel',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[800],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.black54),
                ),
                child: Text(
                  'Elegancia y carácter en cada esencia.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Aquí puedes agregar la lógica para navegar a la lista de perfumes
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: Text('Descubre más perfumes'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
