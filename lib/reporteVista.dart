import 'package:flutter/material.dart';
import 'package:flutter_application_firebase/modelo/usuario.dart';
import 'package:flutter_application_firebase/modelo/usuarioModel.dart';

class resporteVista extends StatefulWidget {
  const resporteVista({Key? key}) : super(key: key);

  @override
  State<resporteVista> createState() => _resporteVistaState();
}

class _resporteVistaState extends State<resporteVista> {
  //variables
  usuarioModel obj = new usuarioModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reporte'),
      ),
      body: FutureBuilder<dynamic>(
          future: obj.getListaDatos(),
          builder: (context, datos) {
            if (datos.hasData) {
              return ListView.builder(
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text(datos.data[index]['id'].toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255))),
                    ),
                    title: Text(datos.data[index]['id'].toString()),
                    subtitle: Text(datos.data[index]['title']),
                    //trailing: Text(datos.data[index]['body']),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      print(datos.data[index]['id'].toString());
                      vermasInfoApi(context, datos.data[index]);
                    },
                  );
                }),
              );
            } else {
              return const Center(
                child: Text("no hay datos"),
              );
            }
          }),
    );
  }
}

//metodo para ver api por id
vermasInfoApi(context, dato) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Ver mas info'),
      // ignore: prefer_interpolation_to_compose_strings
      content: Text('Title ' + dato['title'] + 'Body ' + dato['body']),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.close),
        ),
      ],
    ),
  );
}
