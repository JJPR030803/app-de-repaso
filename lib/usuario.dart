import 'package:flutter/material.dart';

// ignore: camel_case_types
class usuarioText extends StatelessWidget {
  const usuarioText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RichText(
        text: const TextSpan(
            text: 'jvbskvkjsbvjbksvb'
                'cnducnudobuocfwebcioewbifciewobiewofeibewioffneiefniifeninefinoefwinofeionfneiowniofe'
                'jvsdnksdjdsidsbvkjvdskjdvsjkvdnvjkdnsdjnvskjvdnkjvsdvdsdvdsdvdsvsdvkldsndsndsndklsndksvdsdvs'
                'knfsldknvslkkdl vskldsmfdlskmdfkldsmlkmfmsdklfdmkdfsmfskdlffdmkmkfdskmfdskmfdkmlfdlkmsdfsmk'
                'hola soy tu padre',
            style: TextStyle(
                fontSize: 14, color: Colors.red, fontStyle: FontStyle.italic)),
        maxLines: 4,
        overflow: TextOverflow.visible,
      ),
      appBar: AppBar(
          title: const Text('Usuario'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.house_rounded),
          )),
    );
  }
}
