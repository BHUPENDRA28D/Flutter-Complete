void main() {
  B obj = B();
  obj.display1();
  obj.display2();
  obj.display3();
}

class A {
  void display1() {
    print("class A first method");
  }

  void display2() {
    print("class A second method");
  }
}

class C {
  void display3() {
    print("Class c first method");
  }
}

class B implements A, C {
  void display1() {
    print("After Implementation A first method");
  }

  void display2() {
    print("After implementation A second methode");
  }

  void display3() {
    print("After Implemenration B first method");
  }
}
