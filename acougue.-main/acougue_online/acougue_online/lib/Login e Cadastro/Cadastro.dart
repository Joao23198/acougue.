import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  // Controladores dos campos
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();

  void cadastrarUsuario() {
    // Aqui você implementa:
    // - Validação dos campos
    // - Requisição POST para API
    // - Feedback ao usuário
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Açougue Online - Cadastro")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Campo Nome
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(labelText: "Nome"),
            ),

            // Campo Email
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),

            // Campo Senha
            TextField(
              controller: senhaController,
              decoration: const InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),

            const SizedBox(height: 20),

            // Botão de Cadastro
            ElevatedButton(
              onPressed: cadastrarUsuario,
              child: const Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}
