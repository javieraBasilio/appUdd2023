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
          elevation: 1,
          backgroundColor: Color.fromARGB(255, 255, 255,
              255), //color de fondo, a mano, luego se puede integrar a flex_color
          leading: const Icon(
            Icons.person_2_outlined,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          // icono de ayuda al cliente
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Juan Agustin Alcalde 2278,',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12,
                  fontFamily: 'Outfit',
                ),
              ),
              Text(
                '7630201 Vitacura',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 8,
                ),
              ),
            ],
          ), //título de la app
          actions: [
            //iconos búsqueda y more_vert

            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined),
              color: Color.fromARGB(255, 0, 0, 0),
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
                    20, 0, 20, 0), // margen para TextField

                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
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
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Color.fromARGB(255, 0, 0, 0)),
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

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 3, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 380,
                            height: 150,
                            margin: const EdgeInsets.only(
                                right:
                                    12), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  16), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 1}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 5, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 95,
                            height: 100,
                            margin: const EdgeInsets.only(
                                right:
                                    15), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  16), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 4}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 20.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 5, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 95,
                            height: 100,
                            margin: const EdgeInsets.only(
                                right:
                                    15), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  16), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 9}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 35, 0),
                      child: Container(
                        height: 60.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/rappi_itau.jpg'),
                            fit: BoxFit.cover,
                          ),
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
                        fontFamily: 'Outfit',
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 16.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 5, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 168,
                            height: 130,
                            margin: const EdgeInsets.only(
                                right:
                                    15), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 14}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
                        fontFamily: 'Outfit',
                      ),
                    ),
                  ),
                ],
              ),

              const Divider(
                //para separar del siguiente container, es horizontal
                height: 16.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 5, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 168,
                            height: 130,
                            margin: const EdgeInsets.only(
                                right:
                                    15), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 14}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
                    padding: EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      'Sabores del momento',
                      style: TextStyle(
                        color: Color.fromARGB(255, 20, 19, 19),
                        fontSize: 20,
                        fontFamily: 'Outfit',
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 16.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),
              ), //color

              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 5, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 168,
                            height: 130,
                            margin: const EdgeInsets.only(
                                right:
                                    15), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                              ), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 14}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                    const Divider(
                      //para separar del siguiente container, es horizontal
                      height: 25.0, //dos pixeles de alto
                      color: Color.fromARGB(255, 255, 255, 255),
                    ), //color

                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(Icons.star_border_sharp),
                          const SizedBox(width: 8),
                          const Text(
                            'PRIME',
                            style: TextStyle(
                              color: Color.fromARGB(255, 20, 19, 19),
                              fontSize: 16,
                              fontFamily: 'Outfit',
                            ),
                          ),
                          const SizedBox(width: 100),
                          Container(
                            height: 25,
                            width: 170,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 76, 225, 126),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            padding: const EdgeInsets.fromLTRB(
                              16,
                              4,
                              4,
                              0,
                            ),
                            child: const Text(
                              'Probar 30 días gratis',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontFamily: 'Outfit',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          child: Text(
                            '13.000 al mes',
                            style: TextStyle(
                              color: Color.fromARGB(255, 53, 121, 246),
                              fontSize: 20,
                              fontFamily: 'Outfit',
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Text(
                            'es lo que ahorra en promedio un miembro Prime',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: 'Outfit-Light',
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            'DESCUBRE LOS BENEFICIOS PRIME PLUS',
                            style: TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                              fontSize: 12,
                              fontFamily: 'Outfit',
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                            child: Container(
                              height: 80.0,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(93, 188, 153, 83),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                            child: Container(
                              height: 80.0,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(93, 188, 153, 83),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                            child: Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(93, 188, 153, 83),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                            child: Container(
                              height: 80.0,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(93, 188, 153, 83),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Text(
                            'Conoce más de Rappi',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 20,
                              fontFamily: 'Outfit',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 8, 0,
                    0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        scrollDirection:
                            Axis.horizontal, // Scrolleable horizontalmente
                        itemCount: 3, // Cambiado a 8 imágenes
                        itemBuilder: (context, index) {
                          return Container(
                            width: 250,
                            height: 350,
                            margin: const EdgeInsets.only(
                                right:
                                    12), // Espacio de 12 píxeles entre las cajas
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  16), // Bordes con border radius de 16
                              child: Image.asset(
                                  'assets/${index + 1}.jpg'), // Carga imágenes desde assets
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), //Se cierra la estructura de la app
    );
  }
}
