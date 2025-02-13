void main() {
  // printName("Siddhart");
  print(displayProperties());
  print(displayNull());

  //Variable
  // var =can be changed mutable ,
  //final and const  unmutable == cannot be changedvariableName =value;

  // var someValue = 10;

  // // String name = "Bhupendra";
  // // print(someValue);
  // // print(name);

  // final date = DateTime.now();
  // const b = 10;

  // print(someValue);
  // print(date);
  // print(b);

  // print("-------");

  // someValue = 121;
  // // a = 34;
  // // b = 1009;
}

//printName function
// void printName(String name) {
//   print(name);
// }

//multi return from function..
(String, int, bool, double) displayProperties() {
  return ('D-Mart', 234, true, 23456.43);
}

String? displayNull() {
  return null;
}

void namedArgument(
    {required String name, required int age, required String greeting}) {}
