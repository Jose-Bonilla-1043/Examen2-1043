import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Desactiva el banner de depuración
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jose Bonilla Mat:1043'),
          backgroundColor: Colors.blue,
        ),
        body: Container( // Eliminamos el Padding
          color: Colors.white, // Fondo blanco
          child: ListView.separated(
            itemCount: 10, // Aumenta el itemCount a 10 para incluir el rectángulo blanco
            separatorBuilder: (context, index) => Column(
              children: [
                const SizedBox(height: 10), // Espacio entre rectángulos
                const Divider(
                  height: 1, // Altura del Divider
                  color: Colors.grey, // Color gris para la línea
                  thickness: 2, // Grosor de la línea (más gruesa)
                ),
                const SizedBox(height: 10), // Espacio adicional si lo deseas
              ],
            ),
            itemBuilder: (context, index) {
              final colors = [
                Colors.white, // Primer rectángulo blanco
                Colors.amber[100],
                Colors.amber[200],
                Colors.amber[300],
                Colors.amber[400],
                Colors.amber[500],
                Colors.orange[400],
                Colors.orange[500],
                Colors.orange[600],
                const Color.fromARGB(0, 245, 123, 0),
              ];

              return Container(
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 16), // Margen horizontal
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(8), // Bordes redondeados
                ),
                child: Center(
                  child: Text(
                    'Row ${index + 1}',
                    style: const TextStyle(
                      color: Colors.black, // Color del texto
                      fontSize: 18,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}