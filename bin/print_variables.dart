import 'package:dart_example/print_variables.dart' as dart_example;

void main() {
  // print_Var();
  //interpolation();
  //lowerCaseAndUpperCase();
  //temperatureConversion();
  //ifelseStatments();
  // fizzBuzz();
  // simpleCalculator();
  //sumOfList();
  sets();
}

void print_Var() {
  var firstName = "Andrea ";
  var lastName = "Bizzotto ";
  var age = 36;
  var height = 1.84;
  print("firstName: $firstName, " +
      "lastName: $lastName, " +
      "age: + $age, " +
      "height: $height.");
}

void interpolation() {
  double temperature = 20;
  int value = 4;
  int sum = value + value;
  String pizza = "pizza";
  String pasta = "pasta";

  print("The temperature is: $temperature C");
  print("$value plus $value makes $sum");
  print("I like $pizza and $pasta");
}

//String escaping
// ```dart
// void main() {
//   int a = 10;
//   print('$a'); => 10
//   print('\$a'); => $a
//   print('\$$a');  => $10
// }
// ```

void lowerCaseAndUpperCase() {
  String title = "Dart course";
  print("No change: $title");
  print("Changing to uppercase : ${title.toUpperCase()}");
  print("Changing to lowercase : ${title.toLowerCase()}");
}

void temperatureConversion() {
  double tempFarenheit = 86;

  double tempCelsius = (tempFarenheit - 32) / 1.8;

  print("$tempFarenheit F = $tempCelsius C");
}

// Increment and decrement
// ```dart
// void main() {
//   int x = 1; => x=1
//   int y = x++; => x=2, y=1
//   int z = --y; => x=2, y=0, z=0
//   print('x: $x, y: $y, z: $z');
// }
// ```=> result: x: 2, y: 0, z: 0

// ## Exercise: var, final and const
// void main() {
//   String text = 'I like pizza';
//   String topping = 'with tomatoes';
//   String favourite = '$text $topping';
//   String newText = favourite.replaceAll('pizza', 'pasta');
//   favourite = 'Now I like curry';
//   print(newText);
// }
// ```

//  changing =>  const text = 'I like pizza';
//               const topping = 'with tomatoes';
//               var favourite = '$text $topping';
//               final newText = favourite.replaceAll('pizza', 'pasta');
//               favourite = 'Now I like curry';
//               print(newText);

//if/else statements

void ifelseStatments() {
  int netSalary = 40;
  int expenses = 40;
  if (netSalary > expenses) {
    print("You have save ${netSalary - expenses}");
  } else if (expenses > netSalary) {
    print("You have lost ${expenses - netSalary}");
  } else {
    print("Your balance hasn't changed");
  }
}

void fizzBuzz() {
  for (var i = 1; i <= 15; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("fizz buzz");
    } else if (i % 3 == 0) {
      print("fizz");
    } else if (i % 5 == 0) {
      print("buzz");
    } else {
      print(i);
    }
  }
}

enum Operation { plus, minus, multiply, divide }

void simpleCalculator() {
  const a = 4;
  const b = 2;
  const op = Operation.plus;

  switch (op) {
    case Operation.plus:
      print(a + b);
      break;
    case Operation.minus:
      print(a - b);
      break;
    case Operation.multiply:
      print(a * b);
      break;
    case Operation.divide:
      print(a / b);
      break;
  }
}

void sumOfList() {
  var list = [1, 3, 5, 7, 9];
  var sum = 0;
  for (var i = 0; i < list.length; i++) {
    sum += list[i];
  }
  print("Sum: ${sum}");
}

void sets() {
  const a = {1, 3};
  const b = {3, 5};
  print((a.difference(b)..addAll(b.difference(a)))
      .reduce((value, element) => value + element));
}
