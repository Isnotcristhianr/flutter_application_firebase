import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/bienvenida.dart';
import 'calcText.dart';
import 'text2.dart';
import 'bienvenida.dart';
import 'package:flutter_application_firebase/pantallaGuardar.dart';

import 'package:flutter_application_firebase/pantallaListar.dart';

// ignore: camel_case_types
class vistaHome extends StatefulWidget {
  @override
  State<vistaHome> createState() => vistaHomeState();
}

// ignore: camel_case_types
class vistaHomeState extends State<vistaHome> {
  int selecItem = -1;

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case -1:
        return bienvenida();
      case 0:
        return calcText();
      case 1:
        return text2();
      case 2:
        return text2();
      case 3:
        return text2();
      default:
        return const Text("Error");
    }
  }

  //cambiar vistas
  _onSelecItem(int pos) {
    Navigator.of(context).pop;

    setState(() {
      selecItem = pos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conceccion a BDD Firestore'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("IsnotCrsithianr"),
              accountEmail: Text("isnotcristhianr@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/perfil.jpg",
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/3970330/pexels-photo-3970330.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              title: const Text('Calculadora'),
              leading: const Icon(Icons.calculate),
              selected: (0 == selecItem),
              onTap: () {
                _onSelecItem(0);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              leading: const Icon(Icons.add_alert_outlined),
              selected: (1 == selecItem),
              onTap: () {
                _onSelecItem(1);
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              leading: const Icon(Icons.add_alert_outlined),
              selected: (2 == selecItem),
              onTap: () {
                _onSelecItem(2);
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Cuenta'),
              leading: const Icon(Icons.account_circle),
              onTap: () => Navigator.of(context).pop(),
            ),
            ListTile(
              title: const Text('Salir'),
              leading: const Icon(Icons.exit_to_app),
              onTap: () => Navigator.of(context).pop(),
            ),
            const Divider(),
            ListTile(
              title: Text('Guardar Datos'),
              leading: Icon(Icons.save),
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => pantallaGuardar()));
              }),
            ),
            ListTile(
              title: Text('Listar Datos'),
              leading: Icon(Icons.app_registration),
              onTap: (() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => pantallaListar()));
              }),
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(selecItem),
    );
  }
}
