import 'package:flutter/material.dart';
import '../classes/produto.dart'; // seu modelo Produto

class CarrinhoPage extends StatefulWidget {
  const CarrinhoPage({super.key});

  @override
  State<CarrinhoPage> createState() => _CarrinhoPageState();
}

class _CarrinhoPageState extends State<CarrinhoPage> {
  List<Produto> carrinho = []; // lista de produtos no carrinho

  double calcularTotal() {
    return carrinho.fold(0, (soma, item) => soma + item.preco);
  }

  void removerItem(Produto produto) {
    setState(() {
      carrinho.remove(produto);
    });
    // TODO: atualizar backend (DELETE /carrinho/{id})
  }

  void finalizarCompra() {
    // TODO:
    // - Enviar POST /pedidos com itens do carrinho
    // - Limpar carrinho
    // - Redirecionar para página de Pedidos
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu Carrinho")),
      body: carrinho.isEmpty
          ? const Center(child: Text("Seu carrinho está vazio"))
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: carrinho.length,
                    itemBuilder: (context, index) {
                      final produto = carrinho[index];
                      return Card(
                        child: ListTile(
                          title: Text(produto.nome),
                          subtitle: Text("R\$ ${produto.preco.toStringAsFixed(2)}"),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => removerItem(produto),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text("Total: R\$ ${calcularTotal().toStringAsFixed(2)}",
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: finalizarCompra,
                        child: const Text("Finalizar Compra"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
