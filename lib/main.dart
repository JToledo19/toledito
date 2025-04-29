import 'package:flutter/material.dart';
import 'package:act4inicio/inicio.dart';
import 'package:act4inicio/registro.dart';
import 'package:act4inicio/catalogo.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => PerfumeriaInicio(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => RegistroPerfumeria(),
        '/pantalla3': (context) => CatalogoPerfumes(),
      },
    );
  }
}
