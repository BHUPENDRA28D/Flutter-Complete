class A {
  var x = 10;
  void display() {
    print('Super Class\n');
  }
}

class B extends A {
  var x = 20;
  void display() {
    // super is used to use super class element over sub class.
    print(super.x);
    super.display();
  }
}

void main() {
  var b1 = B();
  b1.display();
}
