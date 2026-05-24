import 'package:flutter/material.dart';
import '../classes/pedido.dart'; // seu modelo Pedido

class PedidosPage extends StatefulWidget {
  const PedidosPage({super.key});

  @override
  State<PedidosPage> createState() => _PedidosPageState();
}

class _PedidosPageState extends State<PedidosPage> {
  List<Pedido> pedidos = []; // lista de pedidos

  @override
  void initState() {
    super.initState();
    carregarPedidos();
  }

  void carregarPedidos() {
    // TODO:
    // - Fazer requisição GET /pedidos
    // - Converter resposta em lista de Pedido
    // - Atualizar estado com setState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meus Pedidos")),
      body: pedidos.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: pedidos.length,
              itemBuilder: (context, index) {
                final pedido = pedidos[index];
                return Card(
                  child: ListTile(
                    title: Text("Pedido #${pedido.id}"),
                    subtitle: Text("Total: R\$ ${pedido.total.toStringAsFixed(2)}"),
                    trailing: Text(pedido.status),
                    onTap: () {
                      // TODO:
                      // - Navegar para detalhes do pedido
                      // - Mostrar itens e status completo
                    },
                  ),
                );
              },
            ),
    );
  }
}
