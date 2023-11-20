import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  final String imageName;
  final List<String> titles = [
    '1',
    '2',
    '3',
  ];

  ImageScreen({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    int imageIndex = int.parse(imageName.split('.').first) -
        1; // Obtener el índice de la imagen
    String title = titles[imageIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Fondo blanco
        iconTheme: const IconThemeData(color: Colors.black), // Iconos en negro
        title: Text(
          title, // Título correspondiente al índice de la imagen
          style: const TextStyle(color: Colors.black), // Texto negro
        ),
      ),
      body: Center(
        child: Image.asset(
            'assets/$imageName'), // Mostrar la imagen a pantalla completa
      ),
    );
  }
}
