import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagina_principal.dart';

// ignore: camel_case_types
class fila extends StatelessWidget {
  const fila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                verticalDirection: VerticalDirection.down,
                children: const [
                  Flexible(
                    child: Text(
                        'Hola mundo jdncjsnos infincsndonidsinfinodnidfsnidinfi',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(fontSize: 14)),
                  ),
                  Flexible(
                    child: Text(
                      'data sbdobcosdbiocsdbifbbisdbdibiodbsobidsbiodfsiibd',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AutofillHints.addressCity,
                          color: Colors.yellow,
                          fontStyle: FontStyle.italic),
                      overflow: TextOverflow.clip,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          )),
      appBar: AppBar(
        title: const Text('Columnas'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.house),
            color: Colors.yellow),
      ),
    );
  }
}
