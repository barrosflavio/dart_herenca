void main() {
  Pessoa flavio = Pessoa(nome: 'Flavio de Barros', idade: 22, peso: 115.7);
  Pessoa neto = Pessoa(nome: 'Washington Neto', idade: 22, peso: 78);
  Pessoa vitor = Pessoa(nome: 'Vitor Hugo', idade: 25, peso: 55);

  print(flavio.nome);
  print(neto.nome);
  print(vitor.nome);

  // * EXECUTANDO METODO(função) DENTRO DA CLASSE
  flavio.estaVivo(idadeMaxima: 97);
  neto.estaVivo(idadeMaxima: 105);
  vitor.estaVivo(idadeMaxima: 120);
}

// ! CLASSES
class Pessoa {
  String nome;
  double peso;
  int idade;

  // * CONSTRUTOR LEVA O MESMO NOME DA CLASSE
  Pessoa({required this.nome, required this.peso, required this.idade});

  // ? FUNÇÃO DENTRO DA CLASSE SE CHAMA MÉTODO!
  // FUNÇÃO:
  void estaVivo({required int idadeMaxima}) {
    int isLive = idadeMaxima - idade;
    print('$nome tem $idade anos de idade e deve viver até os $idadeMaxima,'
          'Restam $isLive anos de vida');
  }
}

class Animal extends Pessoa {
  String especie;
  Animal(
      {required String nome,
      required double peso,
      required int idade,
      required this.especie})
      : super(nome: nome, peso: peso, idade: idade);
}

class Espirito {
  String nome;
  int idade;
  bool isMaligno;

  Espirito({required this.nome, required this.idade, required this.isMaligno});
}
