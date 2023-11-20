import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DetalleInicio(),
    const DetalleReservas(),
    const DetalleMatch(),
    const DetallePerfil(),
    const DetalleDeportes(),
    const DetalleClases(),
    const DetalleClubes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actores Chilenos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(170, 10, 16, 0),
              child: Container(
                margin: const EdgeInsets.all(0),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hola fernanda',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 8.0,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Column(
                children: [
                  //ALOJO
                  const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DetalleClases()),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 120.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/3.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalleMatch()),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 120.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/4.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Agregado el contenedor de Deportes
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 0.0),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalleDeportes()),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 120.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                ),
                              ),
                              const Text('Deportes'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 8.0),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetalleClubes()),
                            );
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 120.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/2.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16.0)),
                                  ),
                                ),
                              ),
                              const Text('Clubes'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Container con imagen de bordes redondos
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pin_drop, color: Color.fromRGBO(76, 78, 78, 1)),
            label: 'INICIO',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month,
                color: Color.fromRGBO(76, 78, 78, 1)),
            label: 'RESERVAS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group, color: Color.fromRGBO(76, 78, 78, 1)),
            label: 'MATCH',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromRGBO(76, 78, 78, 1)),
            label: 'PERFIL',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color.fromARGB(255, 103, 102, 102),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => _pages[index]));
        },
      ),
    );
  }
}

class DetalleInicio extends StatelessWidget {
  const DetalleInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Inicio'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Inicio'),
      ),
    );
  }
}

class DetalleReservas extends StatelessWidget {
  const DetalleReservas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Reservas'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Reservas'),
      ),
    );
  }
}

class DetalleMatch extends StatelessWidget {
  const DetalleMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Match'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Match'),
      ),
    );
  }
}

class DetallePerfil extends StatelessWidget {
  const DetallePerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Perfil'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Perfil'),
      ),
    );
  }
}

class DetalleDeportes extends StatelessWidget {
  const DetalleDeportes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Deportes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(8.0, 16.0, 0.0, 0.0),
            child: Text(
              'Deportes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 160.0,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  'assets/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Deporte Seleccionado',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}

class DetalleClases extends StatelessWidget {
  const DetalleClases({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Clases'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Clases'),
      ),
    );
  }
}

class DetalleClubes extends StatelessWidget {
  const DetalleClubes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Clubes'),
      ),
      body: const Center(
        child: Text('Contenido de Detalles de Clubes'),
      ),
    );
  }
}
