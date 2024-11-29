import 'dart:io';

List<String> tareas = [];

void addTask(String? nuevaTarea) {
  if (nuevaTarea != null && nuevaTarea.isNotEmpty) {
    tareas.add(nuevaTarea);
    print('tarea agregada: $nuevaTarea\n');
  } else {
    print('no se pudo agregar la tarea\n');
  }
}

String? preguntarTarea() {
  print('agrega una tarea: ');
  return stdin.readLineSync();
}

void verTareas() {
  print('Tus tareas: ');
  for (var tarea in tareas.reversed) {
    print('$tarea\n');
  }
}

void verMenu() {
  print('1.- todas las tareas\n'
      '2.- agregar una tarea\n'
      '3.- salir\n');
}

void main() {
  String? input = "";

  while (input != "3") {
    verMenu();
    print(':::');
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        verTareas();
        break;
      case "2":
        String? newTask = preguntarTarea();
        addTask(newTask);
        break;
      case "3":
        print('Ta luego');
        break;
    }
  }
}
