import 'package:flutter/material.dart';
import 'package:rappi_6/theme.dart';

//PAGINA 3

class DetalleRestoran extends StatelessWidget {
  const DetalleRestoran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 255, 255,
            255), //color de fondo, a mano, luego se puede integrar a flex_color
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
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
                  fontSize: 10,
                  fontFamily: 'Outfit-Medium'),
            ),
          ],
        ), //título de la app
        actions: [
          //iconos búsqueda y more_vert

          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            color: const Color.fromARGB(255, 0, 0, 0),
            onPressed: () {
              // Acción para el ícono "more_vert"
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
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
                          hintText: '¿Qué quieres comer?',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Outfit-Medium',
                            color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    SizedBox(width: 16),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 12,
                          0), // Margen izquierdo para el icono de búsqueda
                      child: Icon(Icons.search,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ],
                ),
              ),
            ), //aqui termina mi textFild

            //Aqui van los filtros
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 4, 16, 0),
                  child: Container(
                    child: Icon(Icons.tune_outlined),
                    height: 35.0, //con alto de 48 pixeles
                    width: 35.0,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                //color
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                  child: Container(
                    height: 35.0, //con alto de 48 pixeles
                    width: 80.0,
                    padding: const EdgeInsets.fromLTRB(4, 8, 0, 0),
                    child: Text(
                      'Ordenar',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12,
                          fontFamily: 'Outfit'),
                    ),

                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                  child: Container(
                    height: 35.0, //con alto de 48 pixeles
                    width: 100.0,
                    padding: const EdgeInsets.fromLTRB(0, 8, 5, 0),

                    child: Text(
                      'Promociones',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12,
                          fontFamily: 'Outfit'),
                    ),

                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 6, 4, 0),
                  child: Container(
                    height: 35.0, //con alto de 48 pixeles
                    width: 90.0,
                    padding: const EdgeInsets.fromLTRB(0, 8, 5, 0),
                    child: Text(
                      'Más de 4.5',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 12,
                          fontFamily: 'Outfit'),
                    ),

                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black)),
                  ),
                ),
              ],
            ),
            const Divider(
              //para separar del siguiente container, es horizontal
              height: 20.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 8, 0,
                  0), // 16 pixeles desde el borde izquierdo y 16 desde el derecho
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90,
                    child: ListView.builder(
                      scrollDirection:
                          Axis.horizontal, // Scrolleable horizontalmente
                      itemCount: 5, // Cambiado a 8 imágenes
                      itemBuilder: (context, index) {
                        return Container(
                          width: 90,
                          height: 90,
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
            const Divider(
              //para separar del siguiente container, es horizontal
              height: 16.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255),
            ),
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
              height: 16.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
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
              height: 25.0, //dos pixeles de alto
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    'Recomendados para ti',
                    style: TextStyle(
                      color: Color.fromARGB(255, 20, 19, 19),
                      fontSize: 20,
                      fontFamily: 'Outfit',
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetalleProducto()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mcdo.jpg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetalleProducto()),
                  );
                },
                child: Container(
                  height: 200,
                  width: 400,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mcdo.jpg'),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//PAGINA 2

class DetalleProducto extends StatelessWidget {
  const DetalleProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 255, 255,
            255), //color de fondo, a mano, luego se puede integrar a flex_color
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Color.fromARGB(255, 0, 0, 0),
        ),

        // icono de ayuda al cliente

        //título de la app
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
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Reservas'),
      ),
    );
  }
}

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
