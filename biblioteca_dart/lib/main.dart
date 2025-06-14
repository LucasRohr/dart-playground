import "dart:io";
import 'package:biblioteca_dart/aluno.dart';
import 'package:biblioteca_dart/emprestimo.dart';
import 'package:biblioteca_dart/livro.dart';
import 'package:biblioteca_dart/professor.dart';

void main() {
  Livro livroAluno = Livro(
      titulo: 'As Veias Abertas da América Latina',
      autor: 'Eduardo Galeano',
      isbn: '12345ABC',
      disponivel: true);

  Livro livroProfessor = Livro(
      titulo: 'Clean Code',
      autor: 'Robert Martin (Uncle Bob)',
      isbn: '456AVBC',
      disponivel: false);

  Aluno aluno =
      Aluno(nome: 'Lucas Carreno', id: 1302, curso: 'Ciência da Computação');

  Professor professor = Professor(
      nome: 'Maria Adelina Raupp Sganzerla',
      id: 1403,
      departamento: 'Computação');

  Emprestimo emprestimoAluno = Emprestimo(
      livro: livroAluno,
      usuario: aluno,
      dataEmprestimo: DateTime.now(),
      dataDevolucao: DateTime.now().add(const Duration(days: 7)));

  Emprestimo emprestimoProfessor = Emprestimo(
      livro: livroProfessor,
      usuario: professor,
      dataEmprestimo: DateTime.now(),
      dataDevolucao: DateTime.now().add(const Duration(days: 7)));

  // Dados dos usuários
  print('Usuário aluno:');
  print('Nome: ${aluno.nome}');
  print('ID: ${aluno.id}');
  print('Curso: ${aluno.curso}');
  stdout.write('Tipo: ');
  aluno.exibirTipoUsuario();

  print('\n\nUsuário professor:');
  print('Nome: ${professor.nome}');
  print('ID: ${professor.id}');
  print('Departamento: ${professor.departamento}');
  stdout.write('Tipo: ');
  professor.exibirTipoUsuario();

  print('\n');

  // Chama o método emprestar() internamente e mostra um resumo do empréstimo do livro disponível para o aluno
  emprestimoAluno.exibirResumoEmprestimo();

  // Mostra que o empréstimo não pode ser feito pois o livro do professor está indisponível
  emprestimoProfessor.exibirResumoEmprestimo();

  livroProfessor.devolver(); // Torna o livro disponível para o professor
  emprestimoProfessor
      .exibirResumoEmprestimo(); // Agora o empréstimo para o professor será feito
}
