import 'package:flutter/material.dart';

class PaginaAprender extends StatefulWidget {
  const PaginaAprender({super.key});

  @override
  State<PaginaAprender> createState() => _PaginaAprenderState();
}

class _PaginaAprenderState extends State<PaginaAprender> {
  int pagina1 = 0;
  bool estaPrendido = false;
  bool? checkboxOff = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aprendizaje'),
          automaticallyImplyLeading: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              debugPrint('Hola');
            },
            icon: const Icon(Icons.home),
            color: Colors.yellow,
          ),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('boton de barra');
                },
                icon: const Icon(Icons.info))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Este es un texto',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: estaPrendido ? Colors.green : Colors.blue),
              onPressed: () {
                debugPrint('soy batman');
              },
              child: const Text('hola'),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  primary: Colors.red,
                  shape: const CircleBorder(side: BorderSide.none)),
              onPressed: () {
                debugPrint('soy tu padre');
              },
              child: const Text('alo'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, foregroundColor: Colors.blue),
              onPressed: () {
                debugPrint('soy batman');
              },
              child: const Text('hola'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('esta es una fila');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.deepPurple,
                  ),
                  Text('row widget'),
                  Icon(Icons.access_alarm, color: Colors.deepPurple)
                ],
              ),
            ),
            Switch(
                value: estaPrendido,
                onChanged: (bool nuevoBooleano) {
                  setState(() {
                    estaPrendido = nuevoBooleano;
                  });
                }),
            Checkbox(
                value: checkboxOff,
                onChanged: (bool? nuevobool) {
                  setState(() {
                    checkboxOff = nuevobool;
                  });
                })
          ]),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.account_balance_wallet), label: 'Billetera'),
            NavigationDestination(icon: Icon(Icons.abc), label: 'Batman')
          ],
          onDestinationSelected: (int indice) {
            setState(() {
              pagina1 = indice;
            });
          },
          selectedIndex: pagina1,
        ));
  }
}
