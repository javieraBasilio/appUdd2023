import 'package:flutter/material.dart';

class CardAlimentos extends StatelessWidget {
  const CardAlimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 152,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 195, 195, 195),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text('Descripción'),
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Redondea las esquinas
      ),
      child: Container(
        height: 300, // Ajustar la altura
        color: const Color.fromARGB(255, 65, 62, 62),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 195, 195, 195),
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ),
            // Iconos en la parte inferior de la tarjeta
            Container(
              color: Colors.white,
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                alignment: Alignment.topLeft,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
