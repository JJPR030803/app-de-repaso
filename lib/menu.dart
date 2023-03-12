import 'package:flutter/material.dart';
import 'package:flutter_application_1/filas.dart';
import 'package:flutter_application_1/usuario.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                image: DecorationImage(
                    image: AssetImage('assets/images/nubes_neon.jpg'),
                    fit: BoxFit.fill)),
            child: Text(
              'Menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.verified),
            title: const Text('Filas'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const fila(),
                  ));
            },
          ),
          const Divider(color: Colors.yellow, thickness: 2, height: 0),
          ListTile(
            leading: const Icon(Icons.supervised_user_circle),
            title: const Text('Usario'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const usuarioText()));
            },
          ),
          const Divider(color: Colors.yellow, thickness: 2, height: 0),
          ListTile(
            leading: const Icon(Icons.car_crash_outlined),
            title: const Text('Reparaciones'),
            onTap: () {},
          ),
          const Divider(color: Colors.yellow, thickness: 2, height: 0),
          ListTile(
            leading: const Icon(Icons.date_range),
            title: const Text('Citas'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const Divider(color: Colors.yellow, thickness: 2, height: 0),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.abc, textDirection: TextDirection.ltr, size: 30),
              Icon(
                Icons.settings,
                textDirection: TextDirection.rtl,
                size: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
