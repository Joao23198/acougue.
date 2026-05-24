import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<LoginPage> {
  // Controladores dos campos
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
