import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool switchValue =
    true; // Define una variable para controlar el estado del interruptor

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 56, // Altura del AppBar
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          title: const Column(
            // Usamos el título para los textos
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deliver to',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Avda La Plaza 680',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8,
                ),
              ),
            ],
          ),
          actions: [
            Switch(
              value: switchValue, // Estado del interruptor (activo o inactivo)
              onChanged: (newValue) {
                // Función que se ejecuta cuando cambia el estado del interruptor
                switchValue = newValue; // Actualiza el estado del interruptor
              },
              activeColor: const Color.fromARGB(
                  255, 187, 180, 180), // Color para el estado activo (negro)
              inactiveThumbColor: const Color.fromARGB(
                  255, 0, 0, 0), // Color para el estado inactivo (gris)
            ),
          ],
        ),

        body: SingleChildScrollView(
          //Permite eventualemnte desplazarse a un punto x en el scroll.
          child: Column(
            //será una columna vertical, navegamos verticalmente

            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16,
                    0), // Margen izquierdo y derecho para el TextField
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 236, 236),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255), //color
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16,
                    0), // Margen izquierdo y derecho para el TextField

                child: Row(
                  //una fila que tiene dos columnas, separadas por una línea, alto 48 píxeles
                  children: [
                    Expanded(
                      //cada expanded es una columna al interior del container, se construye el container en su interior
                      flex: 1, //primera división de la superficier, ROW
                      child: Container(
                        // acá se construye, el contenido de esa superficie previamente formateada.
                        height: 48.0, //con alto de 48 pixeles
                        color: const Color.fromARGB(
                            255, 255, 255, 255), // Color en formato hexadecimal
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical

                    Expanded(
                      flex: 1, //segunda división de la superficie, ROW
                      child: Container(
                        height: 48.0,
                        color: const Color.fromARGB(
                            255, 255, 255, 255), // Color en formato hexadecimal
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 4.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //Nueva declaración de fila, tendrá 4 subdivisiones
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Color en formato hexadecimal
                    ),
                  ),
                ],
              ),
            ],
          ),
        ), // Se cierra el body

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(
              0xFF023047), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white), // Icono blanco
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.white), // Icono blanco
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white), // Icono blanco
              label: 'Search',
            ),
          ],
          selectedItemColor:
              Colors.white, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(
              255, 103, 102, 102), // Color de íconos no seleccionados
        ),
      ), //Se cierra SCaffold
    ); //Se cierra MaterialApp
  } //Se cierra el Widget Build contexts
}// se cierra la clase


