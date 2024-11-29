import 'dart:io';

List<String> tasks = [];

void addTask(String? newTask) {
  if (newTask != null && newTask.isNotEmpty) {
    tasks.add(newTask);
    print('Tarea agregada: $newTask\n');
  } else {
    print('No se pudo agregar la tarea\n');
  }
}

String? askForTask() {
  print('Introduce una tarea: ');
  return stdin.readLineSync();
}

void showTasks() {
  print('Tus tareas: ');
  for (var task in tasks.reversed) {
    print('$task\n');
  }
}

void showMenu() {
  print('1 para ver todas las tareas\n'
      '2 para agregar una tarea\n'
      '0 para salir\n');
}

void main() {
  String? input = "";

  while (input != "0") {
    showMenu();
    print('---> ');
    input = stdin.readLineSync();

    switch (input) {
      case "1":
        showTasks();
        break;
      case "2":
        String? newTask = askForTask();
        addTask(newTask);
        break;
      case "0":
        print('Adiós');
        break;
    }
  }
}
