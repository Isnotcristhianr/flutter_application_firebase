import 'package:flutter/material.dart';
import 'calcText.dart';
import 'text2.dart';

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
        return Text("Seleccione una opcion");
      case 0:
        return calcText();
      case 1:
        return text2();
      case 2:
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
        title: const Text('Aplication IsnotCristhian3'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text("IsnotCrsithianr"),
              accountEmail: Text("isnotcristhianr@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: FlutterLogo(size: 42.0),
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
          ],
        ),
      ),
      body: _getDrawerItemWidget(selecItem),
    );
  }
}
