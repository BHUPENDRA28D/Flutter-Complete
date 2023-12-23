void main() {
  printname();
  print(displayValue());
  print(displayProperties());
  //call by records
  var name = displayProperties();
  print(name.$1);

  //call by pattern
  var (nameOfCompany, id, isOpen, sales) = displayProperties();
  print("\n\nName of Company : $nameOfCompany");
  print("ID : $id");
  print("Is Open? : $isOpen");
  print("Sales : $sales\n\n");

  // // data(name: 'Naman Gupta', age: 23, greating: 'hola');
  // funReturn();
  print(add(10, 20));
}

void printname() {
  print('Bhupendra Makode');
}

int displayValue() {
  return 1234;
}

//returning 2 or many value from 1 function
(String, int, bool, double) displayProperties() {
  return ('D-Mart', 234, true, 23456.43);
}

// //Named Arrgument or positional arrgument.
// void data({required String name, int? age, required String greating}) {
//   print('\n$name');
//   print('\n$age');
//   print('\n$greating');
// }

//Function returning function
// Function funReturn() {
//   return () {
//     print("hello function");
//   };
// }

// // short hand syntax.
// int add(a, b) {
//   return a + b;
// }
int add(a, b) => a + b;
