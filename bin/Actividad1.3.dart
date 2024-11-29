import 'dart:core';
import 'dart:io';

var students = <String, int>{};

String? askForName() {
  print('Introduce un nombre: ');
  return stdin.readLineSync();
}

int? askForGrade() {
  print('Introduce la nota: ');
  String? newGrade = stdin.readLineSync();

  if (newGrade != null) {
    return int.tryParse(newGrade) ?? (print('El número introducido no es válido\n') as int?);
  }
  return null;
}

void addStudent() {
  String? name = askForName();
  int? grade = askForGrade();

  if (name != null && grade != null) {
    students[name] = grade;
    print('Estudiante agregado: $name con nota $grade\n');
  } else {
    print('No se pudo agregar el estudiante');
  }
}

void showStudents() {
  print('Estudiantes:\n');
  students.forEach((name, grade) {
    print('$name - $grade\n');
  });
}

void showMenu() {
  print('1 para ver todos los estudiantes\n'
      '2 para agregar un estudiante\n'
      '3 para salir\n');
}

void main() {
  String? input = "";

  while (input != "0") {
    showMenu();
    print('---> ');
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        showStudents();
        break;
      case "2":
        addStudent();
        break;
      case "3":
        print('Adiós');
        break;
    }
  }
}



