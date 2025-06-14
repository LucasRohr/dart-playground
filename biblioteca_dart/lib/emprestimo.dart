import 'package:biblioteca_dart/livro.dart';
import 'package:biblioteca_dart/usuario.dart';

// Emprestimo possui também atributos de Livro e Usuario pois não faz sentido herdar essas classes,
// pois um Emprestimo não é um Usuario ou um Livro
class Emprestimo {
  Livro livro;
  Usuario usuario;
  DateTime dataEmprestimo;
  DateTime dataDevolucao;

  Emprestimo(
      {required this.livro,
      required this.usuario,
      required this.dataEmprestimo,
      required this.dataDevolucao});

  void exibirResumoEmprestimo() {
    String dataFormatada =
        '${dataEmprestimo.day}/${dataEmprestimo.month}/${dataEmprestimo.year}';

    print('Resumo do Empréstimo:\n');
    print('Livro: ${livro.titulo}');
    print('Usuário: ${usuario.nome} (');
    usuario.exibirTipoUsuario();
    print(')\n');
    print('Data do Empréstimo: $dataFormatada');
  }
}
