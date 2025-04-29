import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catálogo YLD Perfumería',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        hintColor: Colors.amberAccent,
        fontFamily: 'Roboto',
      ),
      home: CatalogoPerfumes(),
    );
  }
}

class CatalogoPerfumes extends StatelessWidget {
  // Datos de los perfumes (esto en una app real vendría de una API o base de datos)
  final List<Map<String, String>> perfumes = [
    {
      'nombre': 'Versace Eros',
      'precio': '2,000',
      'imagen':
          'https://raw.githubusercontent.com/JToledo19/act2/refs/heads/main/eross.png', // Reemplaza con una URL real
      'agregar': 'Agregar',
    },
    {
      'nombre': 'Versace Eros Flame',
      'precio': '2,500',
      'imagen':
          'https://raw.githubusercontent.com/JToledo19/act2/refs/heads/main/flami.png', // Reemplaza con una URL real
      'agregar': 'Agregar',
    },
    {
      'nombre': 'Versace Dylan Blue',
      'precio': '1,600',
      'imagen':
          'https://raw.githubusercontent.com/JToledo19/act2/refs/heads/main/bli.png', // Reemplaza con una URL real
      'agregar': 'Agregar',
    },
    {
      'nombre': 'Versace Pour Homme',
      'precio': '1,800',
      'imagen':
          'https://raw.githubusercontent.com/JToledo19/act2/refs/heads/main/homi.png', // Reemplaza con una URL real
      'agregar': 'Agregar',
    },
    // Puedes agregar más perfumes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catálogo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Aquí puedes agregar la lógica para ver el carrito
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Carrito de compras')),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Versace',
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            SizedBox(height: 20.0),
            GridView.builder(
              shrinkWrap: true,
              physics:
                  NeverScrollableScrollPhysics(), // Para que no interfiera con the SingleChildScrollView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:
                    0.75, // Ajusta la proporción para que quepan bien los elementos
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: perfumes.length,
              itemBuilder: (context, index) {
                final perfume = perfumes[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Image.network(
                            perfume['imagen']!,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              return Center(
                                  child: Icon(Icons.image_not_supported));
                            },
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          perfume['nombre']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Precio: \$${perfume['precio']!}'),
                        SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aquí puedes agregar la lógica para agregar al carrito
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    content: Text(
                                        'Agregado ${perfume['nombre']} al carrito')),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.yellow[600],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 8),
                              textStyle: TextStyle(fontSize: 12),
                            ),
                            child: Text(perfume['agregar']!),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.home_outlined,
                  size: 30.0, color: Colors.grey[400]),
            ),
          ],
        ),
      ),
    );
  }
}
