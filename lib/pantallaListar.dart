import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/pantallaActualizar.dart';
import 'package:flutter_application_firebase/pantallaGuardar.dart';
import 'package:flutter_application_firebase/text2.dart';

import 'modelo/usuarioModel.dart';

class pantallaListar extends StatelessWidget {
  //variables
  usuarioModel objUsuario = new usuarioModel();

  pantallaListar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listado de Usuario"),
      ),
      body: Center(
        child: FutureBuilder(
            future: objUsuario.getUsuarios(),
            builder: (context, datos) {
              if (datos.hasData) {
                //si hay datos muestra la lista
                /*  return ListView.builder(
                  itemCount: datos.data?.length,
                  itemBuilder: ((context, index) {
                    return Text(datos.data?[index]['nombre'] +
                        "\t" +
                        datos.data?[index]['user'] +
                        "\t" +
                        datos.data?[index]['pass']);
                  }),
                ); */

                //datos en tabla, modificar y eliminar
                return DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Perfil',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Id',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Usuario',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Contraseña',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Eliminar',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Modificar',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    //modificar
                  ],
                  rows: List<DataRow>.generate(
                    datos.data?.length ?? 0,
                    (index) => DataRow(
                      cells: <DataCell>[
                        DataCell(
                          //foto perfil local
                          Image.asset(
                            'assets/perfil.jpg',
                            height: 50,
                          ),
                        ),
                        DataCell(Text(datos.data?[index]['id'])),
                        DataCell(Text(datos.data?[index]['user'])),
                        DataCell(Text(datos.data?[index]['pass'])),
                        DataCell(IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            objUsuario
                                .eliminarUsuario(datos.data?[index]['id']);
                            //eliminar
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pantallaListar()),
                            );
                          },
                        )),
                        DataCell(IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pantallaActualizar()),
                            );
                          },
                        )),
                      ],
                    ),
                  ),
                );
              } else {
                //si no hay datos muestra cargando
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
      ),
    );
  }
}
