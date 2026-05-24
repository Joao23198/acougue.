import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final telefoneController = TextEditingController();
  final enderecoController = TextEditingController();

  // Aqui você pode guardar a imagem escolhida
  String? imagemPerfil;

  void salvarPerfil() {
    // TODO:
    // - Validar campos
    // - Enviar PUT /usuarios/{id} para atualizar dados
    // - Upload da imagem de perfil
    // - Mostrar feedback (SnackBar ou Dialog)
  }

  void escolherImagem() {
    // TODO:
    // - Usar ImagePicker para selecionar foto
    // - Atualizar variável imagemPerfil
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Meu Perfil")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Imagem de perfil
            GestureDetector(
              onTap: escolherImagem,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: imagemPerfil != null
                    ? AssetImage(imagemPerfil!) // depois você troca para FileImage
                    : const AssetImage("assets/default_avatar.png"),
              ),
            ),
            const SizedBox(height: 20),

            // Campos de dados
            TextField(controller: nomeController, decoration: const InputDecoration(labelText: "Nome")),
            TextField(controller: emailController, decoration: const InputDecoration(labelText: "Email")),
            TextField(controller: telefoneController, decoration: const InputDecoration(labelText: "Telefone")),
            TextField(controller: enderecoController, decoration: const InputDecoration(labelText: "Endereço")),

            const SizedBox(height: 20),

            ElevatedButton(onPressed: salvarPerfil, child: const Text("Salvar Alterações")),
          ],
        ),
      ),
    );
  }
}
