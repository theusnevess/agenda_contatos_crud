class User {
  int? id;
  String? nome;
  String? telefone;
  String? email;

  userMap() {
    var mapping = Map<String, dynamic>();
    mapping['id'] = id ?? null;
    mapping['nome'] = nome!;
    mapping['telefone'] = telefone!;
    mapping['email'] = email!;
    return mapping;
  }
}

