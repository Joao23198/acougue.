import 'package:acougue_online/classes/produto.dart';

class Pedido {
  final int id;
  final List<Produto> itens;
  final double total;
  final String status;

  Pedido({
    required this.id,
    required this.itens,
    required this.total,
    required this.status,
  });

  factory Pedido.fromJson(Map<String, dynamic> json) {
    return Pedido(
      id: json['id'],
      itens: (json['itens'] as List)
          .map((item) => Produto.fromJson(item))
          .toList(),
      total: json['total'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'itens': itens.map((p) => p.toJson()).toList(),
      'total': total,
      'status': status,
    };
  }
}
