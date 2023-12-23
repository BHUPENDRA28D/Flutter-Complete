class Vehical {
  int speed = 20;
  bool isEngWorking = false;
  bool isLightOn = true;

  void accelerate() {
    speed += 20;
  }
}

class Car extends Vehical {
  String brand = "Mecides";
  int maxSpeed = 160;

  int maxSpeed_display() => this.maxSpeed;
}

class Truck extends Vehical {
  String brand = "TATA";
  int maxWheel = 20;
  int display_maxWheel() => this.maxWheel;
}

void main() {
  Car car = Car();
  car.isEngWorking;
  car.isLightOn;
  car.accelerate();
  car.maxSpeed_display();
}
