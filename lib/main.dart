import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagina_principal.dart';
import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const RootPagina(),
    );
  }
}

class RootPagina extends StatefulWidget {
  const RootPagina({super.key});

  @override
  State<RootPagina> createState() => _RootPaginaState();
}

class _RootPaginaState extends State<RootPagina> {
  int paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const menu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.yellow),
        title: const Text('Aplicacion'),
      ),
      body: const PaginaPrincipal(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Hola mundo');
        },
        child: const Icon(Icons.car_repair),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.car_crash_sharp), label: 'Choques'),
          NavigationDestination(
              icon: Icon(Icons.car_rental_sharp), label: 'Membresias')
        ],
        onDestinationSelected: (int indice) {
          setState(() {
            paginaActual = indice;
          });
        },
        selectedIndex: paginaActual,
      ),
    );
  }
}
