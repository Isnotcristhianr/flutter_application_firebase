import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_firebase/modelo/usuario.dart';

//apis
import 'package:http/http.dart' as http; //para consumir api
import 'dart:convert'; //para convertir json a map

//conectar a la bd
class usuarioModel {
  CollectionReference conecction =
      FirebaseFirestore.instance.collection('tbl_usuarios');

  //listar
  Future<List> getUsuarios() async {
    List usuarios = [];
    QuerySnapshot consulta = await conecction.get();

    for (var document in consulta.docs) {
      final Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      final usuario = {
        'id': document.id,
        'nombre': data['nombre'],
        'user': data['user'],
        'pass': data['pass'],
      };

      usuarios.add(usuario);
    }

    return usuarios;
  }

  //insertar bd
  Future<void> crearUsuario(usuario nuevoUsuario) async {
    await conecction.add(nuevoUsuario.toMap());
  }

  //eliminar bd
  Future<void> eliminarUsuario(String id) async {
    await conecction.doc(id).delete();
  }

  //modificar bd
  Future<void> modificarUsuario(usuario nuevoUsuario) async {
  await conecction.doc(nuevoUsuario.id).update(nuevoUsuario.toMap());
  }

  //consumir datos de la api
  Future<dynamic> getListaDatos() async {
    String urlApi = "https://jsonplaceholder.typicode.com/posts/";

    final respuesta = await http.get(Uri.parse(urlApi));

    if (respuesta.statusCode == 200) {
      return jsonDecode(respuesta.body);
    } else {
      return print('Error al consumir la api, no hay datos');
    }
  }
}
