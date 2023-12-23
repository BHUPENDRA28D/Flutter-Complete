//Getter - Setter
// Static variable and functions
class widthHieght {
  var _height;
  var _width;
  static int _breadth = 30;

  //Getter and Setter.
  void setHeight(int h) {
    this._height = h;
  }

  int getHeight() {
    return _height;
  }

  void setWidth(int wid) {
    _width = wid;
  }

  int getWidth() => this._width;

  int area() => _height * _width;

  static int getBreadth() {
    return _breadth;
  }
}

void main() {
  widthHieght wh1 = new widthHieght();
  // wh1.setHeight(10);
  // print("Height: ${wh1.getHeight()}");
  // wh1.setWidth(20);
  // print("Height: ${wh1.getWidth()}");
  // print("Area : ${wh1.area()}");

  // int x = widthHieght.breadth;//
  print("${widthHieght.getBreadth()}");
}
