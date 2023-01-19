import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_firebase/modelo/usuario.dart';

//conectar a la bd
class usuarioModel {
  CollectionReference conecction =
      FirebaseFirestore.instance.collection('tbl_usuarios');

  //listar
  Future<List> getUsuarios() async {
    List usuarios = [];
    QuerySnapshot consulta = await conecction.get();

    consulta.docs.forEach((documento) {
      usuarios.add(documento.data());
    });

    return usuarios;
  }

  //insertar bd
  Future<void> crearUsuario(usuario nuevoUsuario) async {
    await conecction.add(nuevoUsuario.toMap());
  }
}
