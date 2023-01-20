import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/modelo/usuario.dart';
import 'package:flutter_application_firebase/modelo/usuarioModel.dart';
import 'package:flutter_application_firebase/pantallaListar.dart';

class pantallaActualizar extends StatefulWidget {
  @override
  _pantallaActualizar createState() => _pantallaActualizar();
}

class _pantallaActualizar extends State<pantallaActualizar> {
  //variables
  usuario nuevoUsuario = usuario();
  usuarioModel operacionUsuario = usuarioModel();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Actualizar"),
      ),
      body: Center(
          child: Column(
        children: [
          //img
          const Image(
            image: AssetImage('assets/well.jpg'),
          ),
          const Divider(),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Nombre',
              hintText: 'Nombre',
            ),
            onChanged: (value) {
              nuevoUsuario.nombre = value;
            },
          ),
          const Divider(),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Usuario',
              hintText: 'Usuario',
            ),
            onChanged: (value) {
              nuevoUsuario.user = value;
            },
          ),
          const Divider(),
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Password',
            ),
            onChanged: (value) {
              nuevoUsuario.pass = value;
            },
          ),
          const Divider(height: 10),
          TextButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 173, 175, 176))),
            child: const Text("Actualizar"),
            onPressed: (() async {
              try {
                await operacionUsuario.crearUsuario(nuevoUsuario);
                //redirecion listar
                MaterialPageRoute(builder: (context) => pantallaListar());
                //vaciar campos
                nuevoUsuario.nombre = "";
                nuevoUsuario.user = "";
                nuevoUsuario.pass = "";
              } catch (e) {
                print(e);
              }
            }),
          ),
        ],
      )),
    );
  }
}
