abstract class A {
  int x = 20;
  int? y;
  void display();
}

class B extends A {
  void display() {
    print("Abstract Method and Class");
    print(x);
  }
}

void main() {
  B obj = new B();
  obj.display();
}
