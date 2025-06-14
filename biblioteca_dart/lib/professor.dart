import "dart:io";
import 'package:biblioteca_dart/usuario.dart';

class Professor extends Usuario {
  String departamento;

  Professor.vazio()
      : departamento = '',
        super(nome: '', id: 0);

  Professor(
      {required super.nome, required super.id, required this.departamento});

  @override
  void exibirTipoUsuario() {
    stdout.write('Professor');
  }
}
