import 'dart:io';

Set<String> generosFavoritos = <String>{};

bool validateAmount() {
  return generosFavoritos.length < 5;
}

void aniadirGenero(String? nuevoGenero) {
  if (validateAmount() && nuevoGenero != null) {
    if (generosFavoritos.add(nuevoGenero)) {
      print('añadido $nuevoGenero a tu lista\n');
    } else {
      print('no se ha podido agregar $nuevoGenero porque ya existe\n');
    }
  } else {
    print('no mas de 5, gracias\n');
  }
}

String? preguntarGenero() {
  print('Añade un genero: ');
  return stdin.readLineSync();
}

void verGeneros() {
  print('lista de generos favoritos:\n');
  for (String genre in generosFavoritos) {
    print('$genre\n');
  }
}

void main() {
  String? input = "";

  while (input != "0") {
    print('1.- ver todos los generos favoritos\n'
        '2.- agregar genero\n'
        '3.- salir\n');
    print('::: ');
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        verGeneros();
        break;
      case "2":
        String? nuevoGenero = preguntarGenero();
        aniadirGenero(nuevoGenero);
        break;
      case "3":
        print('hasta luego');
        break;
    }
  }
}
