import 'package:flutter/material.dart';
import 'items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //Comienza el andamiaje, la estructura de la App
        appBar: AppBar(
          //Acá comienza el Appbar
          elevation: 0,
          backgroundColor: const Color(
              0xFF023047), //color de fondo, a mano, luego se puede integrar a flex_color
          leading:
              const Icon(Icons.person_2_outlined), // icono de ayuda al cliente
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Juan Agustin Alcalde 2278,',
                style: TextStyle(
                  color: Color.fromARGB(255, 240, 239, 239),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '7630201 Vitacura',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 254, 254),
                  fontSize: 8,
                ),
              ),
            ],
          ), //título de la app
          actions: [
            //iconos búsqueda y more_vert

            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              onPressed: () {
                // Acción para el ícono "more_vert"
              },
            ),
          ],
        ), // Acá termina el AppBar
        body: SingleChildScrollView(
          //Este es el body, similar al body de HTML, acá iran superficies , elementos y componentes.
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    16, 0, 16, 0), // margen para TextField

                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 178, 175, 175),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.all(8),
                  child: const Row(
                    children: [
                      SizedBox(width: 16),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '¿Qué quieres hoy?',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 12,
                            0), // Margen izquierdo para el icono de búsqueda
                        child: Icon(Icons.search,
                            color: Color.fromARGB(255, 92, 90, 90)),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 8.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255), //color
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 35, 0),
                      child: Container(
                        height: 120.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
                      child: Container(
                        height: 80.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(93, 188, 153, 83),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(35, 20, 45, 0),
                      child: Container(
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(213, 163, 123, 44),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Text(
                      'Los más popúlares',
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 19, 19),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Text(
                      'Recomendados por Rappi',
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 19, 19),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: Text(
                      'Sabores de momento',
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 19, 19),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ), //Se cierra la estructura de la app
    );
  }
}
