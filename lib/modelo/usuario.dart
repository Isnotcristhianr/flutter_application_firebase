import 'dart:html';

class usuario {
  String nombre = "";
  String user = "";
  String pass = "";

  usuario();

  String? get id => null;

  Map<String, dynamic> toMap() => {
    //id
        'nombre': nombre,
        'user': user,
        'pass': pass,
      };
}
