class usuario {
  String nombre = "";
  String user = "";
  String pass = "";

  usuario();

  Map<String, dynamic> toMap() => {
        'nombre': nombre,
        'user': user,
        'pass': pass,
      };
}
