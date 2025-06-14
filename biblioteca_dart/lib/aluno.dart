import 'package:biblioteca_dart/usuario.dart';

class Aluno extends Usuario {
  String curso;

  Aluno.vazio()
      : curso = '',
        super(nome: '', id: 0);

  Aluno({required super.nome, required super.id, required this.curso});

  @override
  void exibirTipoUsuario() {
    print('Aluno');
  }
}
