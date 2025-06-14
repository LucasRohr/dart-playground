class Livro {
  String titulo;
  String autor;
  String isbn;
  bool disponivel;

  Livro.vazio()
      : titulo = '',
        autor = '',
        isbn = '',
        disponivel = false;

  Livro(
      {required this.titulo,
      required this.autor,
      required this.isbn,
      required this.disponivel});

  void emprestar() {
    if (disponivel) {
      disponivel = false;
      print('Livro emprestado com sucesso!');
    } else {
      print('Livro não está disponível :(');
    }
  }

  void devolver() {
    if (!disponivel) {
      disponivel = true;
      print('Livro devolvido com sucesso!');
    } else {
      print('Livro já está disponível');
    }
  }

  void exibirInformacoes() {
    print('Dados do livro:\n');
    print('Título: $titulo');
    print('Autor: $autor');
    print('ISBN: $isbn');
    print(disponivel ? 'Está disponível!' : 'Não está disponível');
  }
}
