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
      print('\nLivro emprestado com sucesso!');
    } else {
      print('\nLivro não está disponível :(');
    }
  }

  void devolver() {
    if (!disponivel) {
      disponivel = true;
      print('\nLivro devolvido com sucesso!');
    } else {
      print('\nLivro já está disponível');
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
