import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/pantallaGuardar.dart';

import 'package:flutter_application_firebase/pantallaListar.dart';

class bienvenida extends StatefulWidget {
  const bienvenida({super.key});

  @override
  _bienvenida createState() => _bienvenida();
}

class _bienvenida extends State<bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido/a'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //img internet
            const Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/577585/pexels-photo-577585.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpeg'),
              height: 250,
            ),
            //salto
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                //centrar boton
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 175, 176, 173))),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => pantallaListar()));
                  }),
                  child: const Text(
                    "listar",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //centrar boton
                const Spacer(),
              ],
            ),
            const Divider(),
            Row(
              children: [
                //centrar boton
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 173, 176, 173))),
                  onPressed: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => pantallaGuardar()));
                  }),
                  child: const Text("Guardar",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                //centrar boton
                const Spacer(),
              ],
            ),
            //salto
            const SizedBox(
              height: 20,
            ),
            //img internet
            const Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/4792750/pexels-photo-4792750.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.jpeg'),
              height: 250,
            ),
          ],
        ),
      ),
    );
  }
}
