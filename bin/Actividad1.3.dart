import 'dart:core';
import 'dart:io';

var estudiantes = <String, int>{};

String? preguntarNombre() {
  print('introduce un nombre: ');
  return stdin.readLineSync();
}

int? preguntarNota() {
  print('introduce la nota: ');
  String? nuevaNota = stdin.readLineSync();

  if (nuevaNota != null) {
    return int.tryParse(nuevaNota) ?? (print('el numero introducido no es valido\n') as int?);
  }
  return null;
}

void aniadirEstudiante() {
  String? nombre = preguntarNombre();
  int? nota = preguntarNota();

  if (nombre != null && nota != null) {
    estudiantes[nombre] = nota;
    print('estudiante agregado: $nombre con nota $nota\n');
  } else {
    print('no se pudo agregar el estudiante');
  }
}

void imprimirEstudiantes() {
  print('estudiantes:\n');
  estudiantes.forEach((nombre, nota) {
    print('$nombre - $nota\n');
  });
}

void verMenu() {
  print('1 .- ver todos los estudiantes\n'
      '2.- agregar un estudiante\n'
      '3.- salir\n');
}

void main() {
  String? input = "";

  while (input != "0") {
    verMenu();
    print('---> ');
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        imprimirEstudiantes();
        break;
      case "2":
        aniadirEstudiante();
        break;
      case "3":
        print('hasta luego');
        break;
    }
  }
}



