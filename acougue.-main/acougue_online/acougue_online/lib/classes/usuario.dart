class Usuario {
  final int id;
  final String nome;
  final String email;
  final String telefone;
  final String endereco;

  Usuario({
    required this.id,
    required this.nome,
    required this.email,
    required this.telefone,
    required this.endereco,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'],
      nome: json['nome'],
      email: json['email'],
      telefone: json['telefone'],
      endereco: json['endereco'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'telefone': telefone,
      'endereco': endereco,
    };
  }
}
