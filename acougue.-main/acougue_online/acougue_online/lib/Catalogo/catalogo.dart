import 'package:flutter/material.dart';
import '../classes/produto.dart'; // seu modelo Produto

class CatalogoPage extends StatefulWidget {
  const CatalogoPage({super.key});

  @override
  State<CatalogoPage> createState() => _CatalogoPageState();
}

class _CatalogoPageState extends State<CatalogoPage> {
  List<Produto> produtos = []; // lista de produtos

  @override
  void initState() {
    super.initState();
    carregarProdutos();
  }

  void carregarProdutos() {
    // TODO:
    // - Fazer requisição GET /produtos
    // - Converter resposta em lista de Produto
    // - Atualizar estado com setState
  }

  void adicionarAoCarrinho(Produto produto) {
    // TODO:
    // - Enviar produto para carrinho (POST /carrinho)
    // - Mostrar feedback (SnackBar)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catálogo")),
      body: produtos.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: produtos.length,
              itemBuilder: (context, index) {
                final produto = produtos[index];
                return Card(
                  child: ListTile(
                    title: Text(produto.nome),
                    subtitle: Text("R\$ ${produto.preco.toStringAsFixed(2)}"),
                    trailing: IconButton(
                      icon: const Icon(Icons.add_shopping_cart),
                      onPressed: () => adicionarAoCarrinho(produto),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
