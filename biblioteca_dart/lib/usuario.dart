abstract class Usuario {
  String nome;
  int id;

  Usuario.vazio()
      : nome = '',
        id = 0;

  Usuario({required this.nome, required this.id});

  void exibirTipoUsuario();
}
