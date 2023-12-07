library private_var;

class A {
  var _age = 22; // _ uderscore is used to make private.
// library ke bahar se private memeber ko change nahi kr sakte.
  void display() {
    print('age = $_age');
  }
}

void main() {
  var obj1 = A();

  obj1.display();
}
